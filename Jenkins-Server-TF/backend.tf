terraform {
  backend "s3" {
    bucket         = "i2-group-tf-s3-state-locking"
    region         = "us-east-1"
    key            = "i2-group-inf/jenkins-server/terraform.tfstate"
    dynamodb_table = "i2-group-tf-state-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}