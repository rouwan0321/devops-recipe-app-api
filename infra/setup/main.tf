terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket            = "devops-recipe-app-tf-state-202607"
    key               = "tf-state-setup"
    region            = "eu-central-1"
    encrypt           = true
    dynamodb_endpoint = "devops-decipe-app-api-tf-lock-202607"
  }
}

provider "aws" {
  region = "eu-cental-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"

    }
  }

}
