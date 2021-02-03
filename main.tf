terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "AWS_Automated"

    workspaces {
      name = "GitHub-Integration"
    }
  }
}

