pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat '''
                echo == Starting Docker Build ==
                docker build -t my-assignment-app .
                echo == Docker Build Completed ==
                '''
            }
        }

        stage('Test') {
            steps {
                bat '''
                echo == Running Unit Tests ==
                docker run --rm my-assignment-app python -m unittest discover
                echo == Unit Tests Completed ==
                '''
            }
        }

        stage('Deploy') {
            steps {
                bat '''
                echo == Deploying Docker Container ==
                docker run --name my-assignment-container -d my-assignment-app
                echo == Docker Deployment Completed ==
                '''
            }
        }
    }
}