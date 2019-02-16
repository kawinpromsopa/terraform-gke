resource "google_compute_subnetwork" "private-subnetwork" {
  name          = "private-subnetwork"
  ip_cidr_range = "10.1.0.0/16"
  region        = "asia-southeast1-a"
  network       = "${google_compute_network.private-network.self_link}"
#  secondary_ip_range {
#    range_name    = "private-network-range"
#    ip_cidr_range = "192.168.10.0/24"
#  }
}

resource "google_compute_network" "private-network" {
  name                    = "private-network"
  auto_create_subnetworks = false
}