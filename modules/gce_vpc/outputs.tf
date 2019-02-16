#####################
# Network VPC outputs
#####################

output "vpc_name" {
  description = "The unique name of the network"
  value       = "${google_compute_network.vpc.name}"
}

output "self_link" {
  description = "The URL of the created resource"
  value       = "${google_compute_network.vpc.self_link}"
}
