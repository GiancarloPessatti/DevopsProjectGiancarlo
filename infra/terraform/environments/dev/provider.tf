terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "devops-portfolio-terraform-state-giancarlo"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
