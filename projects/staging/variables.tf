######################
# GCP Public Variables
######################

variable "project_name" {
  # Name of project ID!
  default = "terraform-kubernetes-231903"
}

variable "region" {
  description = "Region of resources"
  default     = "asia-southeast1"
}

variable "name" {
  # Terraform Workspace envoroiment!
  default = {
  description = "Name for vpc"
    prod     = "prod"
    staging  = "staging"
  }
}

###################
# Network variables
###################

variable "subnet_cidr" {
  default = {
  description = "Subnet range"

    prod       = "10.10.0.0/24"
    staging    = "10.240.0.0/24"
  }
}

######################
# GKE Public variables
######################

#variable "min_master_version" {
#  description = "Number of nodes in each GKE cluster zone"
#  default     = "1.10.7-gke.6"
#}

#variable "node_version" {
#  description = "Number of nodes in each GKE cluster zone"
#  default     = "1.10.7-gke.6"
#}

variable "gke_num_nodes" {
  default = {
  description = "Number of nodes in each GKE cluster zone"

    prod     = 2
    staging  = 1
  }
}

variable "gke_master_user" {
  description = "Username to authenticate with the k8s master"
  default     = "k8s_admin"
}

variable "gke_master_pass" {
  # Value neede to create! (*Must to be 15 Charecter!)
  description = "Username to authenticate with the k8s master"
  default     = ""
}

variable "gke_node_machine_type" {
  default     = "n1-standard-1"
  description = "Machine type of GKE nodes"
}

variable gke_label {
  default = {
  description = "label"

    prod      = "prod"
    staging   = "staging"
  }
}

####################
# CloudSQL variables
####################

variable "availability_type" {
  default = {
  description = "Availability type for HA"

    prod      = "REGIONAL"
    staging   = "ZONAL"
  }
}

variable "sql_instance_size" {
  description = "Size of Cloud SQL instances"
  default     = "db-f1-micro"
}

variable "sql_disk_type" {
  description = "Cloud SQL instance disk type"
  default     = "PD_SSD"
}

variable "sql_disk_size" {
  description = "Storage size in GB"
  default     = "10"
}

variable "sql_require_ssl" {
  description = "Enforce SSL connections"
  default     = "false"
}

variable "sql_master_zone" {
  description = "Zone of the Cloud SQL master (a, b, ...)"
  default     = "a"
}

variable "sql_replica_zone" {
  description = "Zone of the Cloud SQL replica (a, b, ...)"
  default     = "b"
}

variable "sql_connect_retry_interval" {
  description = "The number of seconds between connect retries."
  default     = 60
}

variable "sql_user" {
  description = "Username of the host to access the database"
  default     = "admin"
}

variable "sql_pass" {
  description = "Password of the host to access the database"
  default     = "password"
}