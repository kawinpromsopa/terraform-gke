
#####################
# Network VPC outputs
#####################

output "vpc_name" {
  value       = "${google_compute_network.vpc.name}"
}

output "self_link" {
  value       = "${google_compute_network.vpc.self_link}"
}

########################
# Network subnet outputs
########################

output "ip_cidr_range" {
  description = "Export created CICDR range"
  value       = "${google_compute_subnetwork.subnet.ip_cidr_range}"
}

output "subnet_name" {
  description = "Export created CICDR range"
  value       = "${google_compute_subnetwork.subnet.name}"
}

###########
GKE outputs
###########

output "endpoint" {
  description = "Endpoint for accessing the master node"
  value       = "${google_container_cluster.primary.endpoint}"
}

##############################
# CloudSQL postgresql outputs
##############################

output "master_instance_sql_ipv4" {
  value       = "${google_sql_database_instance.master.ip_address.0.ip_address}"
  description = "The IPv4 address assigned for master"
}