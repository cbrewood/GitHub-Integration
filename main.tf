terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
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
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "example2" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}