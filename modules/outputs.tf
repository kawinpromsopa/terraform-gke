
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
