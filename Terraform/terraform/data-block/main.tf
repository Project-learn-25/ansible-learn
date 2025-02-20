data "aws_security_group" "selected" {
    name = "Allow-All"
}

output "sg"{
    value = data.aws_security_group.selected
}

