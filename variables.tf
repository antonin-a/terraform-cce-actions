variable "network_id" {
  description = "ID of the Network"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "keypair" {
  description = "keypair for nodes"
  type        = string
}

variable "cluster_name" {
  description = "Name of the CCE cluster"
  type        = string
  default   = "cluster-tf-action"
}
