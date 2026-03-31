terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # Atenção a qualquer um lendo essa aplicação, essa é uma pasta de FUNDAÇÃO, logo, deverá ser utilizada APENAS para dar inicio a infra.

  # PASSO 1 (BOOTSTRAP): Comente o bloco "backend" na primeira vez que rodar o apply.
  # PASSO 2 (MIGRAÇÃO): Após criar o S3 e DynamoDB, descomente e rode 'terraform init' para migrar o estado.

  backend "s3" {
    bucket         = "devops-portfolio-terraform-state-giancarlo"
    key            = "foundation/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
