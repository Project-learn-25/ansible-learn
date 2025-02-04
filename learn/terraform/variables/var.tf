variable "a" {
    default = "100"
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


output "y_0" {
    value = var.b_list[0]
}


output "z_t" {
    value = var.c_map["t"]
}

variable "env" {
    output "env_name" {
        value = "Environment name - $(var.env)"
    }
}