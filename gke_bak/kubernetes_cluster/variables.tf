##################
# Public Variables
##################

#variable "public_key" {
#  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7XbGC6XlUV4I3ejqEzsrUU3c8y5a8kdtGMsvh75SFbNwwUFKakfyBPl1zsVlfFl6JFLrokIRUo+TmriQc818T2on+hK3ag+PqvDvkrjIT25KZfxm2r5fhBBDTWySJrt7QA1B2wCpDDsh0mqWY03oN06HBM/+5CA1LZWiaTzZCpDPgUvo0rRJeX1LMQXmh5b08zkUuE4wdCI8Q7XjM2t0OheX6R3lztNDAUWpAWCxuaoHNyjknXPgsSAHiJb7JFkf/ET2QtAJV3r5lASYXm0Ckn57NOz7eXH0tvK5OppVlaF1yr4juGFbmHl//s4Tty4PjSqPRD6HU+5TOxVRdRhiR kawinpromsopa@kawin.local"
#}

variable "project" {
  # Name of project ID!
  default = "terraform-kubernetes-231903"
}

variable "region" {
  default = "asia-southeast1-a"
}

variable "additional_zones" {
  default = ["asia-southeast1-a", "asia-southeast1-b", "asia-southeast1-c"]
}

variable "cluster_name" {
  default = "gke-cluster"
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
