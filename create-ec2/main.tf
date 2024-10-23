# aws_access_key = xxxx MUST NEVER DO THIS
# aws_secret_key = xxxx MUST NEVER DO THIS
# syntax often used in HCL is  key = value

# create an ec2 instance
# where to create - provide the provider
provider "aws" {
  # which region to use to create infrastructure
  region = "eu-west-1"
}
# which service/resources to create
resource "aws_instance" "app_instance" {
  # which AMI ID ami-0c1c30571d2dae5c9 (for ubuntu 22.04 lts)
  ami = "ami-0c1c30571d2dae5c9"

  # what type of instance to launch - t2.micro
  instance_type = "t2.micro"

  # add a public ip to this istance
  associate_public_ip_address = true

  # name the service/resource we create
  tags = {
    Name = "tech264-maria-tf-app-instance"
  }

}




