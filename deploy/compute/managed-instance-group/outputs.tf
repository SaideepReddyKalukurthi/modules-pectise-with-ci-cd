output "subnets" {
    value = data.google_compute_network.my-network.subnetworks_self_links
}

output "mig1-instance-group" {
    value = module.mig1.self_link
}

output "mig2-instance-group" {
    value = module.mig2.self_link
}
  
output "mig3-instance-group" {
    value = module.mig3.self_link
}
