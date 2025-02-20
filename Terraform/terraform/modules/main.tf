module "demo-1" {
     source = "./demo"
     name = "cloud"
     instance_type ="t2.micro"
}

module "demo-2" {
     source = "./demo"
     name = "cloud2"
     instance_type ="t2.micro"
}