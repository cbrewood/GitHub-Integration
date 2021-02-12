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

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}

provider "aws" {
  alias = "east"
  region = "us-east-1"
}

resource "aws_instance" "us-east-1" {
  ami           = "ami-0fcb9148d9ae606c0"
  instance_type = "t2.micro"
}