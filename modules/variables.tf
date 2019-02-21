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


####################
# CloudSQL variables
####################

# Cloud SQL variables

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

variable "machine_type" {
  description = "Machine type of GCE nodes"
  default = "n1-standard-1"
}

# k8s variables
variable gke_label {
  type        = "map"
  description = "label"
}