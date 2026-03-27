provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "devops-portfolio-terraform-state-giancarlo"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}