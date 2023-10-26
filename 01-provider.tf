# Configure the Terrafrom block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
 cloud {
    organization = "techlearnings23"

    workspaces {
      name = "terraform_published_module"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}