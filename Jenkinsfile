pipeline {
    agent any

    environment {
        SONARQUBE_SERVER = 'http://localhost:9000'
        SONARQUBE_TOKEN = 'your-sonarqube-token'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('resume-website')
                }
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner -Dsonar.projectKey=resume-website -Dsonar.sources=. -Dsonar.host.url=$SONARQUBE_SERVER -Dsonar.login=$SONARQUBE_TOKEN'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.image('resume-website').run('-p 8080:80')
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
