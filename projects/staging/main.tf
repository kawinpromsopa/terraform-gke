#######################
# Google Cloud Platform
#######################

provider "google" {
  project = "${var.project_name}"
  region  = "${var.region}"
  version = "~> 2.0"
}

module "vpc" {
  source = "../../modules/gce_vpc"
}

module "subnet" {
  source      = "../../modules/gce_subnet"
  region      = "${var.region}"
  vpc_name     = "${module.vpc.vpc_name}"
  subnet_cidr = "${var.subnet_cidr}"
}

module "firewall" {
  source           = "../../modules/gce_firewall"
  vpc_name         = "${module.vpc.vpc_name}"
  ip_cidr_range    = "${module.subnet.ip_cidr_range}"
}

module "gke" {
  source                = "../../modules/gce_gke"
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

module "cloudsql" {
  source                     = "../../modules/gce_cloudsql"
  region                     = "${var.region}"
  availability_type          = "${var.availability_type}"
  sql_instance_size          = "${var.sql_instance_size}"
  sql_disk_type              = "${var.sql_disk_type}"
  sql_disk_size              = "${var.sql_disk_size}"
  sql_require_ssl            = "${var.sql_require_ssl}"
  sql_master_zone            = "${var.sql_master_zone}"
  sql_connect_retry_interval = "${var.sql_connect_retry_interval}"
  sql_replica_zone           = "${var.sql_replica_zone}"
  sql_user                   = "${var.sql_user}"
  sql_pass                   = "${var.sql_pass}"
}