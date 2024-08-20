pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                // You can use git step to checkout code
                // git branch: 'main', url: 'https://github.com/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building project...'
                // Replace this with actual build commands, e.g., for a Maven project
                // sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Replace this with actual test commands, e.g., for a Maven project
                // sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to environment...'
                // Add your deployment scripts/commands here
                // sh './deploy.sh'
            }
        }
    }
    
    post {
        always {
            echo 'Cleaning up...'
            // Example: cleanup workspace
            // deleteDir()
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
