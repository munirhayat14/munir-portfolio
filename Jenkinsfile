pipeline {
    agent any
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
        }
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
