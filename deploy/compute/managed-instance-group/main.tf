provider "google" {
  project = var.project-name
}

module "mig1" {
  source            = "../../../modules/compute/managed-instance-group"
  instance_template = data.terraform_remote_state.template.outputs.mig1_template-link
  project_id        = var.project-name
  region            = var.regions["group-1"]
  hostname          = "${data.terraform_remote_state.network.outputs.network-name}-group1"
  target_size       = 2
  named_ports = [{
    name = "http",
    port = 80
  }]
  network    = data.terraform_remote_state.network.outputs.network-link
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[0]
}

module "mig2" {
  source            = "../../../modules/compute/managed-instance-group"
  instance_template = data.terraform_remote_state.template.outputs.mig2_template-link
  project_id        = var.project-name
  region            = var.regions["group-2"]
  hostname          = "${data.terraform_remote_state.network.outputs.network-name}-group2"
  target_size       = 2
  named_ports = [{
    name = "http",
    port = 80
  }]
  network    = data.terraform_remote_state.network.outputs.network-link
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[1]
}

module "mig3" {
  source            = "../../../modules/compute/managed-instance-group"
  instance_template = data.terraform_remote_state.template.outputs.mig3_template-link
  project_id        = var.project-name
  region            = var.regions["group-3"]
  hostname          = "${data.terraform_remote_state.network.outputs.network-name}-group3"
  target_size       = 2
  named_ports = [{
    name = "http",
    port = 80
  }]
  network    = data.terraform_remote_state.network.outputs.network-link
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[2]
}
