
data "terraform_remote_state" "template" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/compute/instance-template/state"    
    } 
}

data "terraform_remote_state" "network" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/vpc/state"    
    }
  
}

data "google_compute_network" "my-network" {
    project = var.project-name
    name = data.terraform_remote_state.network.outputs.network-name
}


terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/compute/managed-instance-group/state"    
  }
}
