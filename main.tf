provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.63"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
}


terraform {
  backend "s3" {
    bucket = "ecsworkshopbucket-1"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}