#######################
# Google Cloud Platform
#######################

provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
  version = "~> 2.0"
}