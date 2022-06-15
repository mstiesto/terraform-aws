# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "xxxx"
  secret_key = "xxxx"
}

module "IAM" {
  source = "./modules/IAM"
}

module "S3" {
  source = "./modules/S3"
}


module "CloudFront" {
  source = "./modules/CloudFront"
}
