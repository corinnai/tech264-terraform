# Specify the AWS provider
provider "aws" {
    region = "eu-west-1"
}

# Create a security group named tech264-maria-tf-allow-port-22-3000-80
resource "aws_security_group" "tech264_maria_tf_sg" {
  name        = "tech264-maria-tf-allow-port-22-3000-80"
  description = "Security group allowing ports 22, 3000, and 80"

  # Allow SSH (port 22) from localhost
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["127.0.0.1/32"] #change this with 0.0.0.0 so you can can SSH into it
  }

  # Allow port 3000 from all IP addresses
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTP (port 80) from all IP addresses
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tech264-maria-tf-sg"
  }
}



