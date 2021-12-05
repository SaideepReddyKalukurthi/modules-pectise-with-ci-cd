# module "vpc" {
#     source = "../../../modules/network"
#     project_id   = "<PROJECT ID>"
#     network_name = "example-vpc"

#     subnets = [
#         {
#             subnet_name           = "subnet-01"
#             subnet_ip             = "10.10.10.0/24"
#             subnet_region         = "us-west1"
#         },
#         {
#             subnet_name           = "subnet-02"
#             subnet_ip             = "10.10.20.0/24"
#             subnet_region         = "us-west1"
#             subnet_private_access = true
#             subnet_flow_logs      = true
#         },
#     ]

    
# }

module "vpc" {
    source = "../../../modules/network/vpc"
   # version = "~> 2.0.0"

    project_id   = var.project-name
    network_name = var.network-name

    shared_vpc_host = false
}