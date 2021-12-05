# terraform {
#   required_providers {
#     google = {
#         source = "hashicorp/google"
#     }
#   }
#   backend "gcs" {
#       bucket = "terraform-remote-state-data"
#       prefix = "deploy/vm/state"
#   }
# }

# provider "google" {
#     project = var.project-name
#     region = var.region
# }

# resource "google_compute_instance" "vm-1" {
#     name = "sai-001"
#     machine_type = "n1-standard-1"
#     zone = "${var.region}-a"
#     network_interface {
#       network = "default"

#       access_config {
        
#       }
#     }
#     boot_disk {
#         initialize_params {
#           image = "debian-cloud/debian-9"
#         }
#     }

  
# }