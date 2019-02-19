#######################
# VPC firewall Internal
#######################

resource "google_compute_firewall" "firewalli-internal" {
  name    = "${terraform.workspace}-firewall-internal"
  network = "${var.vpc_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  source_ranges = ["${var.ip_cidr_range}"]
}

#######################
# VPC firewall External
#######################

resource "google_compute_firewall" "firewall-external" {
  name    = "${terraform.workspace}-firewall-external"
  network = "${var.vpc_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "6443", "9100"]
  }

  source_ranges = ["0.0.0.0/0"]
}
