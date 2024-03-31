pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                
                }
            }
        }

        stage('Test') {
            steps {
                sh 'python app.py'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.image('python:3.9').inside {
                        sh 'python app.py'
                    }
                }
            }
        }
    }
}
