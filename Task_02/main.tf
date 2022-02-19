 terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = "eu-central-1"
  #  shared_credentials_file = "/Users/tf_user/.aws/creds
  default_tags {
    tags = {
      owner = "azolin"
    }
  }
}

module "ec2" {
  source = "./modules/EC2"

  tag = "tf-my-instance"
  owner = "azolin"
  key_name = "my-main-key"
  private_key = file("C:\\Users\\alzolin\\Downloads\\my-main-key.pem")
  vpc_id = "vpc-0a71ef66c38aebc6d"
  subnet_id = "subnet-0aae943cc418196ad"
  vpc_security_group = ["sg-07e3094021c337c5f", "sg-0edd4d70180bb1cba"]
}








#data "aws_ami" "amazon_linux" {
#  most_recent = true
#
#  filter {
#    name   = "name"
#    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
#  }

#  owners = ["amazon"]
#}
#
#resource "aws_instance" "tf-my-instance" {
#  ami = data.aws_ami.amazon_linux.id
#  instance_type = var.instance_type
#  tags = {
#    Name = "my-first-tf-instance"
#  }
#}