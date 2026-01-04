terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  
  backend "s3" {
    bucket = "<s3-bucket-name>"
    key = "<remote-state-file-name>"
    region = "us-east-1"
    dynamodb_table = "<dynamoDB>"
  }
}

provider "aws" {
  region = "us-east-1"
}
