output "subnets" {
    value = data.google_compute_network.my-network.subnetworks_self_links
}

output "mig1-instance-group" {
    value = module.mig1.instance_group
}

output "mig1-instance-group" {
    value = module.mig2.instance_group
}
  
output "mig1-instance-group" {
    value = module.mig3.instance_group
}
