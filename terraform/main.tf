provider "aws" {
  region = "us-south-1"
}

resource "aws_instance" "instance-1" {
  ami = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  security_groups = {"master-sg"}
  key_name = "docker-key"
  user_data = file("grafana.sh")
  tags = {
    Name = "Grafana-server"
  }
}

resource "aws_instance" "instance-2" {
  ami = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  security_groups = {"master-sg"}
  key_name = "docker-key"
  tags = {
    Name = "Node-expo"
  }
}