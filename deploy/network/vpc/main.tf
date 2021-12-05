

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

module "vpc" {
    source = "../../../modules/network"
    project_id   = var.project-name
    network_name = "${var.network-name}-001"

    subnets = [
        {
            subnet_name           = "group-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = true
        },
        {
            subnet_name           = "group-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = true
        },
        {
            subnet_name           = "group-03"
            subnet_ip             = "10.10.30.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = true
        },
    ]

    
}