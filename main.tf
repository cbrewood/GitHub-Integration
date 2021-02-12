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
  region  = "us-east-1"
  }

  resource "aws_instance" "us-east-1" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
