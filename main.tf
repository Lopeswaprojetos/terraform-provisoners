terraform {
  required_version = ">=1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.36.0"
    }
  }

  backend "s3" {
    bucket = "wagner-s3-bucket"
    key    = "aws-vm-provisioners/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      Owner      = "Wagner Lopes Da Silva"
      managed-by = "Terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "wagner-s3-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}
