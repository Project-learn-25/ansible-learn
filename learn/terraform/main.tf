terraform {
required_providers {
aws = {
    source = "hashicorp/aws"
    version = "5.84.0"  
}
}
}

provider "aws" {
    region = "us-eas-1"
}

resource "aws_s3_bucket" "example"{
    bucket = "my-tf-test-bucket"
    tags = {
        Name = "my bucket"
        Environment = "test" 
    }
}