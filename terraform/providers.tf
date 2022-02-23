terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.2.0"
    }
  }
  required_version = ">= 0.13"
  backend "s3" {
    profile = "cloud_jake"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    bucket  = "schlottag-terraform"
  }
}

provider "aws" {
  region                   = "us-east-2"
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = "cloud_jake"
}
