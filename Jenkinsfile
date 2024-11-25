pipeline {
    agent any

    environment {
        COMPOSE_FILE = "docker-compose.yml"
        DOCKER_WORKDIR = "/home/munir" // Update as necessary
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t munirhayat/portfolio:latest .'
            }
        }
        stage('Deploy to VPS') {
            steps {
                sh '''
                    docker run --rm \
                    -v /var/run/docker.sock:/var/run/docker.sock \
                    -v /home/munir:/app \
                    -w /app \
                    docker/compose:1.29.2 down --remove-orphans

                    docker run --rm \
                    -v /var/run/docker.sock:/var/run/docker.sock \
                    -v /home/munir:/app \
                    -w /app \
                    docker/compose:1.29.2 up -d portfolio
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
            echo 'Cleaning up temporary files...'
            sh 'docker system prune -f'
        }
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
