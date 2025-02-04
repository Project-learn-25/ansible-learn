# ? and :

resource "aws_instance" "test" {
    ami = "ami-04b4f1a9cf54c11d0" 
    instance_type = "var.instance_type" == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}