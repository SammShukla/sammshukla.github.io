pipeline {
    agent any
    
    stages {
        stage('Initialization') {
            steps {
                echo 'Pipeline initialized.'
                // Simulate some environment setup
                sh 'echo "Setting up environment variables"'
                sh 'env'
            }
        }

        stage('Build Simulation') {
            steps {
                echo 'Simulating build process...'
                // Simulate a build process with a dummy command
                sh 'echo "Building project..."'
                // Add a sleep to simulate time taken by a real build
                sh 'sleep 3'
                echo 'Build complete.'
            }
        }

        stage('Test Simulation') {
            steps {
                echo 'Simulating test execution...'
                // Simulate test execution
                sh 'echo "Running tests..."'
                // Simulate a passing test
                sh 'sleep 2 && echo "Tests passed!"'
            }
        }

        stage('Deployment Simulation') {
            steps {
                echo 'Simulating deployment...'
                // Simulate a deployment step
                sh 'echo "Deploying application..."'
                // Simulate a delay to represent deployment
                sh 'sleep 2'
                echo 'Deployment complete.'
            }
        }
    }
    
    post {
        always {
            echo 'Cleaning up...'
            // Simulate workspace cleanup
            sh 'echo "Workspace cleanup..."'
        }
        success {
            echo 'Pipeline succeeded!'
            sh 'echo "Pipeline executed successfully!"'
        }
        failure {
            echo 'Pipeline failed.'
            sh 'echo "Pipeline encountered an error."'
        }
    }
}

