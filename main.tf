#######################
# Google Cloud Platform
#######################

provider "google" {
  project = "${var.project_name}"
  region  = "${var.region}"
  version = "~> 2.0"
}

module "vpc" {
  source = "./modules/gce_vpc"
}

module "subnet" {
  source      = "./modules/gce_subnet"
  region      = "${var.region}"
  vpc_name     = "${module.vpc.vpc_name}"
  subnet_cidr = "${var.subnet_cidr}"
}

module "firewall" {
  source           = "./modules/gce_firewall"
  vpc_name         = "${module.vpc.vpc_name}"
  ip_cidr_range    = "${module.subnet.ip_cidr_range}"
}

module "gke" {
  source                = "./modules/gce_gke"
  region                = "${var.region}"
#  min_master_version    = "${var.min_master_version}"
#  node_version          = "${var.node_version}"
  gke_num_nodes         = "${var.gke_num_nodes}"
  vpc_name              = "${module.vpc.vpc_name}"
  subnet_name           = "${module.subnet.subnet_name}"
  gke_master_user       = "${var.gke_master_user}"
  gke_master_pass       = "${var.gke_master_pass}"
  gke_node_machine_type = "${var.gke_node_machine_type}"
  gke_label             = "${var.gke_label}"
}