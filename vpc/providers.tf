terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "terrafrom-test-tsstate"
    key = "vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
region = "ap-northeast-1"
}
