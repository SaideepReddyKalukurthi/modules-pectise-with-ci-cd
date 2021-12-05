provider "google" {
    project = var.project-name
}

module "vpc-1" {
    source = "../../../modules/network"
    project_id   = var.project-name
    network_name = data.terraform_remote_state.network.outputs.network-name


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