terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }

  backend "s3" {
    bucket = "hsn-terraform-prj-statefile"
    key = "global/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region
}