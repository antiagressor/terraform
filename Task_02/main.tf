provider "aws" {
  region = "eu-central-1"
  #  shared_credentials_file = "/Users/tf_user/.aws/creds
  default_tags {
    tags = {
      owner = "azolin"
    }
  }
}
