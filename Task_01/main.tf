provider "aws" {
  region = "eu-central-1"
  #  shared_credentials_file = "/Users/tf_user/.aws/creds
  default_tags {
    tags = {
      owner = "azolin"
    }
  }
}

// Get VPCs
data "aws_vpcs" "my_vpcs" {}

// Output VPCs
output "data_aws_vpcs" {
  value = data.aws_vpcs.my_vpcs.ids
}


// Get Subnets
data "aws_subnets" "current" {}

// Output Subnets
output "data_aws_subnets" {
  value = data.aws_subnets.current.ids
}


// Get Security Groups
data "aws_security_groups" "current" {
  filter {
    name   = "description"
    values = ["*"]
  }
}

// Output Security Groups
output "aws_security_groups" {
  value = data.aws_security_groups.current.ids
}
