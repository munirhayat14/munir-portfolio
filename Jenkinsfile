pipeline {
    agent any
    
    environment {
        DOCKER_CREDENTIALS = credentials('DockerCredential')
        VPS_SSH_CREDENTIALS = credentials('TertibSSHKey')
        TELEGRAM_TOKEN = credentials('TelegramToken')
        TELEGRAM_CHAT_ID = credentials('TelegramChatID')
        DOCKER_IMAGE = "munirbahrin/portfolio"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Docker Login') {
            steps {
                sh '''
                    echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin
                '''
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh '''
                    docker build -t $DOCKER_IMAGE:latest -t $DOCKER_IMAGE:${BUILD_NUMBER} .
                '''
            }
        }
        
        stage('Push Docker Image to Dockerhub') {
            steps {
                sh '''
                    docker push $DOCKER_IMAGE:latest
                    docker push $DOCKER_IMAGE:${BUILD_NUMBER}
                '''
            }
        }
        
        stage('Deploy to VPS') {
            steps {
                sshagent(credentials: ['TertibSSHKey']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no munir@217.15.166.187 << EOF
                            cd /home/munir
                            docker-compose pull portfolio
                            docker-compose up --force-recreate -d portfolio
                            docker system prune --volumes -f
                        << EOF
                    '''
                }
            }
        }

        stage('Health Check') {
            steps {
                sh '''
                    RETRIES=5
                    for i in $(seq 1 $RETRIES); do
                      if curl -f https://portfolio.tertib.xyz/ -k | grep -q "Munir"; then
                        echo "Health check passed!"
                        exit 0
                      fi
                      echo "Health check failed. Retrying in 10 seconds... ($i/$RETRIES)"
                      sleep 10
                    done
                    exit 1
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
            sh 'docker logout'
        }
        success {
            sh '''
                curl -s -X POST https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage \
                -d chat_id=$TELEGRAM_CHAT_ID \
                -d parse_mode=HTML \
                -d text="✅ <b>SUCCESS</b> 🚀\n\nPortfolio deployment successful!\nBuild: #${BUILD_NUMBER}\n🌟 Everything is up and running!"
            '''
        }
        failure {
            sh '''
                curl -s -X POST https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage \
                -d chat_id=$TELEGRAM_CHAT_ID \
                -d parse_mode=HTML \
                -d text="❌ <b>FAILED</b> 🚨\n\nPortfolio deployment failed!\nBuild: #${BUILD_NUMBER}\n⚠️ Immediate attention required!"
            '''
        }
    }
}
