provider "google" {
  project = var.project-name
}

module "cloud-nat-group-1" {
  source     = "../../../modules/network/cloud-nat"
  project_id = var.project-name
  region     = var.regions["group-1"]
  router     = data.terraform_remote_state.cloud-router.outputs.router-1-name
  name       = "sai-cloud-nat-group-1"
}


module "cloud-nat-group-2" {
  source     = "../../../modules/network/cloud-nat"
  project_id = var.project-name
  region     = var.regions["group-2"]
  router     = data.terraform_remote_state.cloud-router.outputs.router-1-name
  name       = "sai-cloud-nat-group-1"
}

module "cloud-nat-group-3" {
  source     = "../../../modules/network/cloud-nat"
  project_id = var.project-name
  region     = var.regions["group-3"]
  router     = data.terraform_remote_state.cloud-router.outputs.router-1-name
  name       = "sai-cloud-nat-group-1"
}



#google_compute_router.router.name