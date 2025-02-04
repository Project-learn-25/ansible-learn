variable "a" {
    default = "200"
}

variable "b_list" {
    default = ["cdf","smd","qjp"]
}

variable "c_map" {
    default  = {
        s = "30"
        t = "40"
    }
}

output "x" {
    value = var.a
}


output "y_1" {
    value = var.b_list[1]
}


output "z_s" {
    value = var.c_map["s"]
}