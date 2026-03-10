terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"

    }
  }
}
# To authenticate into my aws account#
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["C:/Users/ukeme.okon/.aws/credentials"]
  profile                  = "Test"
}