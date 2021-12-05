

provider "google" {
    project = var.project-name  
}

module "vpc" {
    source = "../../../modules/network/vpc"
   # version = "~> 2.0.0"

    project_id   = var.project-name
    network_name = var.network-name

    shared_vpc_host = false
}