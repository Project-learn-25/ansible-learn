terraform {
required_providers {
aws = {
    source = "hashicorp/aws"
    version = "5.84.0"  
}
}


backend "aws_s3_bucket" "example"{
    bucket = "my-tf-test-15952521"
    key = "sm/myfile/terraform.tfstate"
    region = "us-east-1"

    #state locking
dynamodb_table = "project_tf"
}
}

#partition of dynamodb should be "lock_id"

#provide block
provider "aws" {
    region =  "us-east-1"
}

resource "aws_instance" "demo" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
}