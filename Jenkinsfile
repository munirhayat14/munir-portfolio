pipeline {
    agent any
    
    environment {
        DOCKER_CREDENTIALS = credentials('DockerCredential')
        VPS_SSH_CREDENTIALS = credentials('TertibSSHKey')
        TELEGRAM_TOKEN = credentials('TelegramToken')
        TELEGRAM_CHAT_ID = credentials('TelegramChatID')
        DOCKER_IMAGE = "munirbahrin/portfolio"
        DEPLOY_HOST = "217.15.166.187"
        DEPLOY_USER = "munir"
    }

    options {
        timeout(time: 1, unit: 'HOURS')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }

    stages {
        stage('Validate Environment') {
            steps {
                script {
                    sh '''
                        docker info || exit 1
                        ssh -V || exit 1
                    '''
                }
            }
        }

        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Docker Login') {
            steps {
                script {
                    retry(3) {
                        sh '''
                            echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin || exit 1
                        '''
                    }
                }
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    try {
                        sh '''
                            docker build --no-cache -t $DOCKER_IMAGE:latest -t $DOCKER_IMAGE:${BUILD_NUMBER} .
                        '''
                    } catch (exc) {
                        error "Docker build failed: ${exc.message}"
                    }
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    retry(2) {
                        sh '''
                            docker push $DOCKER_IMAGE:latest
                            docker push $DOCKER_IMAGE:${BUILD_NUMBER}
                        '''
                    }
                }
            }
        }
        
        stage('Deploy to VPS') {
            steps {
                sshagent(credentials: ['TertibSSHKey']) {
                    script {
                        retry(3) {
                            sh '''
                                ssh -o StrictHostKeyChecking=no -o ConnectTimeout=10 ${DEPLOY_USER}@${DEPLOY_HOST} << EOF
                                    cd /home/${DEPLOY_USER}
                                    docker-compose pull portfolio
                                    docker-compose up --force-recreate -d portfolio
                                    docker system prune --volumes -f
                                EOF
                            '''
                        }
                    }
                }
            }
        }

        stage('Health Check') {
            steps {
                script {
                    timeout(time: 5, unit: 'MINUTES') {
                        sh '''
                            RETRIES=10
                            for i in $(seq 1 $RETRIES); do
                                if curl -f -s -m 10 https://portfolio.tertib.xyz/ -k | grep -q "Munir"; then
                                    echo "Health check passed!"
                                    exit 0
                                fi
                                echo "Health check attempt $i/$RETRIES failed. Retrying in 30 seconds..."
                                sleep 30
                            done
                            exit 1
                        '''
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
            sh 'docker logout || true'
        }
        success {
            sh '''
                curl -s -X POST https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage \
                -d chat_id=${TELEGRAM_CHAT_ID} \
                -d parse_mode=HTML \
                -d text="✅ <b>SUCCESS</b> 🚀\n\nPortfolio deployment successful!\nBuild: #${BUILD_NUMBER}\n🌟 Everything is up and running!"
            '''
        }
        failure {
            sh '''
                curl -s -X POST https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage \
                -d chat_id=${TELEGRAM_CHAT_ID} \
                -d parse_mode=HTML \
                -d text="❌ <b>FAILED</b> 🚨\n\nPortfolio deployment failed!\nBuild: #${BUILD_NUMBER}\n⚠️ Immediate attention required!"
            '''
        }
    }
}
