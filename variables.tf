variable "network_id" {
  description = "ID of the Network"
  type        = string
}

variable "vpc_id" {
  description = "ID of the Network"
  type        = string
}

variable "keypair" {
  description = "keypair for nodes"
  type        = string
}

variable "cluster_name" {
  description = "keypair for nodes"
  type        = string
  default   = "cluster-tf-action"
}
