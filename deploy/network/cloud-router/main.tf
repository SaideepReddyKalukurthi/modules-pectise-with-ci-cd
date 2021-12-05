
module "cloud-router-1" {
    source = "../../../modules/network/cloud-router"
    project = var.project-name
    network = data.terraform_remote_state.network.outputs.network-name
    region = var.regions["group-1"]
    name = "${data.terraform_remote_state.network.outputs.network-name}-cloud-router-1"
}

module "cloud-router-2" {
    source = "../../../modules/network/cloud-router"
    project = var.project-name
    network = data.terraform_remote_state.network.outputs.network-name
    region = var.regions["group-2"]
    name = "${data.terraform_remote_state.network.outputs.network-name}-cloud-router-2"
}

module "cloud-router-3" {
    source = "../../../modules/network/cloud-router"
    project = var.project-name
    network = data.terraform_remote_state.network.outputs.network-name
    region = var.regions["group-2"]
    name = "${data.terraform_remote_state.network.outputs.network-name}-cloud-router-3"
}

