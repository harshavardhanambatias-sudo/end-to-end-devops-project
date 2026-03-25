pipeline {
    agent any

    environment {
        IMAGE_NAME = "yourdockerhubusername/devops-flask-app"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Clone Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

        stage('Trivy File Scan') {
            steps {
                sh 'trivy fs . || true'
            }
        }

        stage('Trivy Image Scan') {
            steps {
                sh 'trivy image $IMAGE_NAME:$IMAGE_TAG || true'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    sh 'docker push $IMAGE_NAME:$IMAGE_TAG'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
                sh 'kubectl apply -f k8s/service.yaml'
            }
        }
    }
}