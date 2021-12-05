

data "terraform_remote_state" "network" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/vpc/state"    
    } 
}

data "terraform_remote_state" "cloud-router" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/cloud-router/state"    
    } 
}

data "terraform_remote_state" "mig" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/compute/managed-instance-group/state"    
    } 
}



terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/http-lb/state"    
  }
}

