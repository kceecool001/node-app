terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=>4.0"
    }
  }
  backend "s3" {
    bucket = "kcee-dev-tf"
    key = "aws/ec2-deploy/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = var.region
}