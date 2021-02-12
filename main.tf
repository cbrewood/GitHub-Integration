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

  resource "aws_vpc" "us-west-2-vpc1" {
  cidr_block = "10.1.0.0/16"
}

  resource "aws_vpc" "us-west-2-vpc2" {
  cidr_block = "10.2.0.0/16"
}

resource "aws_vpc_peering_connection" "us-west-2-vpc1-vpc2" {
  peer_vpc_id   = aws_vpc.us-west-2-vpc1.id
  vpc_id        = aws_vpc.us-west-2-vpc2.id
}

provider "aws" {
  alias = "east"
  region  = "us-east-1"
}

  resource "aws.east_vpc" "us-east-1-vpc1" {
  cidr_block = "10.3.0.0/16"
}