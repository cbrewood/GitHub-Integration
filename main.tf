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

  resource "aws_vpc" "vpc2" {
  cidr_block = "10.2.0.0/16"
}

resource "aws_vpc_peering_connection" "vpc1-vpc2" {
  peer_vpc_id   = aws_vpc.vpc-0e2f395ef59d796bb
  vpc_id        = aws_vpc.vpc-0ffbf746c13eab25e
}
