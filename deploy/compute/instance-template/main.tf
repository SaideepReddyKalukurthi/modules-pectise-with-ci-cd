provider "google" {
  project = var.project-name
}

module "mig1_template" {
  source     = "../../../modules/compute/instance-template"
  project_id = var.project-name
  network    = data.terraform_remote_state.network.outputs.network-name
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[1]
  service_account = {
    email  = ""
    scopes = ["cloud-platform"]
  }
  name_prefix          = "${data.terraform_remote_state.network.outputs.network-name}-group1"
  startup_script       = data.template_file.group1-startup-script.rendered
  source_image_family  = "ubuntu-1804-lts"
  source_image_project = "ubuntu-os-cloud"
  tags = [
    "${data.terraform_remote_state.network.outputs.network-name}-group1",
    data.terraform_remote_state.cloud-router.outputs.router-1-name
  ]
}

module "mig2_template" {
  source     = "../../../modules/compute/instance-template"
  project_id = var.project-name
  network    = data.terraform_remote_state.network.outputs.network-name
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[0]
  service_account = {
    email  = ""
    scopes = ["cloud-platform"]
  }
  name_prefix          = "${data.terraform_remote_state.network.outputs.network-name}-group2"
  startup_script       = data.template_file.group2-startup-script.rendered
  source_image_family  = "ubuntu-1804-lts"
  source_image_project = "ubuntu-os-cloud"
  tags = [
    "${data.terraform_remote_state.network.outputs.network-name}-group2",
    data.terraform_remote_state.cloud-router.outputs.router-2-name
  ]
}


module "mig3_template" {
  source     = "../../../modules/compute/instance-template"
  project_id = var.project-name
  network    = data.terraform_remote_state.network.outputs.network-name
  subnetwork = data.google_compute_network.my-network.subnetworks_self_links[2]
  service_account = {
    email  = ""
    scopes = ["cloud-platform"]
  }
  name_prefix          = "${data.terraform_remote_state.network.outputs.network-name}-group3"
  startup_script       = data.template_file.group3-startup-script.rendered
  source_image_family  = "ubuntu-1804-lts"
  source_image_project = "ubuntu-os-cloud"
  tags = [
    "${data.terraform_remote_state.network.outputs.network-name}-group3",
    data.terraform_remote_state.cloud-router.outputs.router-3-name
  ]
}