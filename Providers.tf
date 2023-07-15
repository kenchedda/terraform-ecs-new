terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6.0" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket         = "ecs-devops-demo"
    key            = "statelock/ecs-devops-demo.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "ecs-devops-demo-tf-state-lock"
  }
}

provider "aws" {
  region = var.region
  alias  = "us-east-1"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {

}