provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "devops-server"
  }
}