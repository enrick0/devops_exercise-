provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "enrick0aws"

    workspaces {
      name = "aws-enrick0"
    }
  }
}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {}
