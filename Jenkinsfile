pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        // stage('Run Security Tests') {
        //     parallel {
        //         stage('SonarQube Analysis') {
        //             steps {
        //                 withSonarQubeEnv('SonarQubeServer') {
        //                     sh './gradlew sonarqube'
        //                 }
        //             }
        //         }
        //         stage('Trivy Scan') {
        //             steps {
        //                 sh 'trivy image my-portfolio:latest'
        //             }
        //         }
        //         stage('OWASP Dependency Check') {
        //             steps {
        //                 sh './dependency-check.sh'
        //             }
        //         }
        //     }
        // }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-portfolio:latest .'
            }
        }
        stage('Deploy to VPS') {
            steps {
                sh '''
                docker stop portfolio || true
                docker rm portfolio || true
                docker run -d --name portfolio -p 80:80 my-portfolio:latest
                '''
            }
        }
    }
}