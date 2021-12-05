terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/network/vpc/state"    
  }
}