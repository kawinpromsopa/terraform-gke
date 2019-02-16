##################
# Public Variables
##################

variable "project" {
  # Name of project ID!
  default = "terraform-kubernetes-231903"
}

variable "region" {
  default = "asia-southeast1-a"
}

variable "cluster_name" {
  default = "gke-k8s-cluster"
}

variable "cluster_zone" {
  default = "asia-southeast1-a"
}

variable "cluster_k8s_version" {
  default = "1.9.7-gke.3"
}

variable "initial_node_count" {
  default = 2
}

#variable "autoscaling_min_node_count" {
#  default = 1
#}

#variable "autoscaling_max_node_count" {
#  default = 2
#}

variable "disk_size_gb" {
  default = 30
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-1"
}
