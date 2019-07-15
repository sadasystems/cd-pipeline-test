variable "vpc_name" {
  description = "VPC name"
  default     = "opencue-vpc"
}

variable "auto_create_subnetworks" {
  default     = "true"
  description = "false = creates custom VPC, true = automatically creates subnets in each region."
}
