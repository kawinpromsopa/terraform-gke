##################
# Module Variables
####################

variable "region" {}
variable "ip_cidr_range" {}

variable "subnet_cidr" {
  type        = "map"
}

###############
# GKE variables
###############


#variable "min_master_version" {
#  description = "Number of nodes in each GKE cluster zone"
#}

#variable "node_version" {
#  description = "Number of nodes in each GKE cluster zone"
#}

variable "gke_num_nodes" {
  description = "Number of nodes in each GKE cluster zone"
  type        = "map"
}


variable "gke_master_user" {
  # Value neede to create!
  description = "Username to authenticate with the k8s master"
}

variable "gke_master_pass" {
  # Value neede to create! (*Must to be 15 Charecter!)
  description = "Username to authenticate with the k8s master"
}

variable "gke_node_machine_type" {
  description = "Machine type of GKE nodes"
  default = "n1-standard-1"
}

# k8s variables
variable gke_label {
  type        = "map"
  description = "label"
}
