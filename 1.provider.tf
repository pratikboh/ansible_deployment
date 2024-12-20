provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "<= 1.10.1" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 6.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraformpratik"
    key    = "Ansible.tfstate"
    region = "us-east-1"
  }
}
