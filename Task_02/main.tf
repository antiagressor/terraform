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

module "rds" {
  source = "./modules/RDS"

  db_subnet_group_name = "default-vpc-0a71ef66c38aebc6d"
  vpc_security_group   = ["sg-09d50438a8371946b"]
  db_identifier        = "tf-db-instance"
  db_name              = "testdb"
  db_username          = "testusername"
  db_password          = "testpassword"
  engine_version       = "10.5"
}