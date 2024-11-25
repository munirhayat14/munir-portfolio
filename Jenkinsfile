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
            sh '''
                docker run --rm \
                -v /var/run/docker.sock:/var/run/docker.sock \
                -v $(pwd):/app \
                -w /app \
                docker/compose:latest down --remove-orphans

                docker run --rm \
                -v /var/run/docker.sock:/var/run/docker.sock \
                -v $(pwd):/app \
                -w /app \
                docker/compose:latest up -d portfolio
            '''
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
