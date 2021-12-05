
output "backend_services" {
  description = "The backend service resources."
  value       = google_compute_backend_service.default
  sensitive   = true // can contain sensitive iap_config
}

output "external_ip" {
  description = "The external IPv4 assigned to the global fowarding rule."
  value       = local.address
}

output "external_ipv6_address" {
  description = "The external IPv6 assigned to the global fowarding rule."
  value       = local.ipv6_address
}

output "ipv6_enabled" {
  description = "Whether IPv6 configuration is enabled on this load-balancer"
  value       = var.enable_ipv6
}

output "http_proxy" {
  description = "The HTTP proxy used by this module."
  value       = google_compute_target_http_proxy.default[*].self_link
}

output "https_proxy" {
  description = "The HTTPS proxy used by this module."
  value       = google_compute_target_https_proxy.default[*].self_link
}

output "url_map" {
  description = "The default URL map used by this module."
  value       = google_compute_url_map.default[*].self_link
}