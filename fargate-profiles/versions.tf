# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 4.13"
      version = ">= 4.65"
     }
    kubernetes = {
      source = "hashicorp/kubernetes"
      #version = "~> 2.11"
      version = ">= 2.20"
    }      
  }

  /*
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "dev-aws-eks"
    key    = "dev/eks-fargate-profile/terraform.tfstate"
    region = "eu-west-1" 

    # For State Locking
    dynamodb_table = "dev-eks-fargate-profile"    
  }*/     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}

