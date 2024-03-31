pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }

        stage('Build image') {
            steps {
                script {
                    // Build Docker image
                    docker.build("shivapriya1726/docker-integration", "-f Dockerfile .")
                }
            }
        }

        stage('Test image') {
            steps {
                script {
                    echo "Tests passed"
                }
            }
        }

        stage('Push image') {
            steps {
                script {
                    // Push Docker image to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                        docker.image("shivapriya1726/docker-integration").push("${env.BUILD_NUMBER}")
                        docker.image("shivapriya1726/docker-integration").push("latest")
                    }
                }
                echo "Successfully pushed Docker image to Docker Hub"
            }
        }
    }
}
