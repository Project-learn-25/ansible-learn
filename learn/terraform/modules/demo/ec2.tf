resource "aws_instance" "test" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = var.instance_type

    tags = {
        name = var.name
    }
}

variable "name" {}
variable "instance_type" {}