# Specify the AWS provider
provider "aws" {
    region = "eu-west-1"
}

# Create an EC2 instance with the specified settings
resource "aws_instance" "app_instance" {
  ami             = "ami-0c1c30571d2dae5c9"

  instance_type   = "t2.micro"

  key_name        = "tech264-maria-aws-key"  

  associate_public_ip_address = true

  # Attach the created security group
  vpc_security_group_ids = ["sg-06e3ea067984c928b"]

  tags = {
    Name = "tech264-maria-tf-app-instance"
  }
}