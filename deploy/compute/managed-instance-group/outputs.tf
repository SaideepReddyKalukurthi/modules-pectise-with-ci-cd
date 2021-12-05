output "subnets" {
    value = data.google_compute_network.my-network.subnetworks_self_links
}
  
