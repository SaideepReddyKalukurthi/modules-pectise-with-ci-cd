data "template_file" "group1-startup-script" {
  template = file(format("%s/gceme.sh.tpl", path.module))

  vars = {
    PROXY_PATH = "/group1"
  }
}

data "template_file" "group2-startup-script" {
  template = file(format("%s/gceme.sh.tpl", path.module))

  vars = {
    PROXY_PATH = "/group2"
  }
}

data "template_file" "group3-startup-script" {
  template = file(format("%s/gceme.sh.tpl", path.module))

  vars = {
    PROXY_PATH = "/group3"
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
      prefix = "deploy/compute/instance-template/state"    
  }
}


