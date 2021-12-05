provider "google" {
    project = var.project-name
}

module "subnets" {
    source = "../../../modules/network/subnets"
    project_id   = var.project-name
    network_name = data.terraform_remote_state.network.outputs.network-name

    subnets = [
        {
            subnet_name           = "group-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.regions["group-1"]
            subnet_private_access = true
        },
        {
            subnet_name           = "group-02"
            subnet_ip             = "10.10.50.0/24"
            subnet_region         = var.regions["group-2"]
            subnet_private_access = true
        },
        {
            subnet_name           = "group-03"
            subnet_ip             = "10.10.60.0/24"
            subnet_region         = var.regions["group-3"]
            subnet_private_access = true
        },
    ]

    
}