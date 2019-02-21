###############
# GCE variables
###############

variable "region" {}
variable "vpc_name" {}
variable "subnet_name" {}


variable "machine_type" {
  description = "Machine type of GCE nodes"
  default = "n1-standard-1"
}

# k8s variables
variable gke_label {
  type        = "map"
  description = "label"
}
