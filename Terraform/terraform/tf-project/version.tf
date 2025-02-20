terraform {
    required_version = ">= 1.0" #which means any version equal
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

#provier block
provider "aws" {
    region = var.aws_region
}