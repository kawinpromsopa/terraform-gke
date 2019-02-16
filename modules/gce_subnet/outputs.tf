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