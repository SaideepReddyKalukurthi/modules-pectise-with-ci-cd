
output "load-balancer-ip" {
  value = module.gce-lb-https.external_ip
}

output "load-balancer-ipv6" {
  value       = module.gce-lb-https.ipv6_enabled ? module.gce-lb-https.external_ipv6_address : "undefined"
  description = "The IPv6 address of the load-balancer, if enabled; else \"undefined\""
}

output "asset-url" {
  value = "https://${module.gce-lb-https.external_ip}/assets/gcp-logo.svg"
}

output "asset-url-ipv6" {
  value       = module.gce-lb-https.ipv6_enabled ? "https://${module.gce-lb-https.external_ipv6_address}/assets/gcp-logo.svg" : "undefined"
  description = "The asset url over IPv6 address of the load-balancer, if enabled; else \"undefined\""
}