terraform {
  backend "gcs" {
      bucket = "terraform-remote-state-data"
      prefix = "deploy/vm/state"    
  }
}