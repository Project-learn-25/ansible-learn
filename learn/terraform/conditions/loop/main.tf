#count =   for simple looping
#for_each - for complex looping

resource "null_resource" "test"{
    count = 10
}

resource "null_resource" "test1"{
    for_each = var.color-code
}

variable "color-code" {
    default = {
        red = 21
        blue = 31
        green = 45
        black = 20
    }
}