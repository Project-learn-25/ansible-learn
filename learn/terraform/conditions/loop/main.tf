#count =   for simple looping
#foreach - for complex looping

resource "null_resource" "test"{
    count = 10
}

resource "null_resource" "test1"{
    foreach = "var.color-code"
}

variable "color-code" {
    default = {
        red = 21
        blue = 31
        green = 45
        black = 20
    }
}