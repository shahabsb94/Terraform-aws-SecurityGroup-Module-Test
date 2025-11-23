terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }
    backend "s3" {
      bucket = "expense-project-vpc"
      key = "expense-sg"
      region = "us-east-1"
      dynamodb_table = "expense-project-vpc"
    }
}

provider "aws" {
    region = "us-east-1"
}