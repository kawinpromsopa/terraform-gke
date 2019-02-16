#############
# GKE outputs
#############

output "endpoint" {
  description = "Endpoint for accessing the master node"
  value       = "${google_container_cluster.primary.endpoint}"
}
