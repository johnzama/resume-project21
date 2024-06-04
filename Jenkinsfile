pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building the Resume Website"'
                // Add any build steps here, if needed
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "Deploying the Resume Website"'
                // Add deployment steps here, e.g., copying files to a web server
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
        success {
            echo 'Pipeline succeeded.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
