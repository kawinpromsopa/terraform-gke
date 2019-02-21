resource "google_compute_instance" "mongodb-1" {
  name = "gce-${terraform.workspace}-mongodb-1"
  zone = "${var.region}-a"
  network            = "${var.vpc_name}"
  subnetwork         = "${var.subnet_name}"
  machine_type       = "${machine_type}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/ubuntu-1604-lts"
    }
  }
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      # Terraform workspace envoroiment
      ENV = "${var.gke_label[terraform.workspace]}"
    }
    tags         = ["gce_monogodb-1"] 
  }
}
