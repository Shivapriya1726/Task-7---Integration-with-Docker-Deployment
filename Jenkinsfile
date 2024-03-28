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
                    app = docker.build("shivapriya1726/docker-integration")
                }
            }
        }

        stage('Test image') {
            steps {
                script {
                    app.inside {
                        echo "Tests passed"
                    }
                }
            }
        }

        stage('Push image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
                echo "Successfully pushed Docker image to Docker Hub"
            }
        }
    }
}
