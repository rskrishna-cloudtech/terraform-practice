terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }

  backend "s3" {
    bucket         = "daws-my-pract-s3-remote-state"
    key            = "remote-state-for-each-loop"
    region         = "us-east-1"
    dynamodb_table = "daws-my-pract-remote-state-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
