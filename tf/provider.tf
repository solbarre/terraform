provider "aws" {
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
  bucket = "unimate-terraform-tfstate"
  key = "dev/terraform.tfstate"
  region = "eu-west-1"
  }
}