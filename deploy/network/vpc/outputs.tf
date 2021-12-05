output "network-name" {
    value = module.vpc.network_name  
}

output "network-link" {
    value = module.vpc.network_self_link
}

output "network-id" {
    value = module.vpc.network_id
}
