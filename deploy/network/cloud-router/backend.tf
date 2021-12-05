data "terraform_remote_state" "network" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/vpc/state"    
    }
  
}


terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/cloud-router/state"    
  }
}