# End-to-End DevOps Project

This project shows a simple Flask app deployed using DevOps tools.

## Tools Used
- Git & GitHub
- Docker
- Jenkins
- Trivy
- Kubernetes
- Terraform
- AWS

## Project Flow
1. Write code in Flask
2. Push code to GitHub
3. Build Docker image
4. Push image to Docker Hub
5. Deploy to Kubernetes
6. Create infrastructure using Terraform

## Run Locally

```bash
pip install -r requirements.txt
python app.py

# End-to-End DevOps Project

## Tools Used
- Python Flask
- Docker
- AWS EC2
- GitHub

## Run locally
python app.py

## Build Docker image
docker build -t devops-app .

## Run container
docker run -d -p 8080:8080 --name devops-container devops-app

## Access app
http://<EC2-Public-IP>:8080
