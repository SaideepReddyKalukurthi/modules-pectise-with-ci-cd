data "terraform_remote_state" "cloud-router" {
    backend = "gcs"
    config = {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/cloud-router/state"    
    }
  
}


terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/cloud-nat/state"    
  }
}