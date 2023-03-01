module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 6.0"

    project_id   = var.project_id
    network_name = "example-vpc"
    routing_mode = "GLOBAL"

    subnets = [
      {
        subnet_name   = "gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
      }
    ]
}
