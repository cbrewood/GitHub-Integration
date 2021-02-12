terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.10.0"
    }
  }
 }

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

  resource "aws_vpc" "vpc1" {
  cidr_block = "10.1.0.0/16"
}



