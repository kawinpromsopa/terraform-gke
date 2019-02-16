###################
# Subnet variables
##################

variable "vpc_name" {}
variable "region" {}

variable "subnet_cidr" {
  description = "Subnet range"
  type        = "map"
}
