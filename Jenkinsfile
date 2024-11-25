pipeline {
    agent any

    environment {
        COMPOSE_FILE = "docker-compose.yml"
        DOCKER_WORKDIR = "/home/munir"
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
                    docker-compose down --remove-orphans
                    docker-compose up -d portfolio
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
