variable "prefix" {
  default     = "task1"
  description = "The Prefix used for all resources in this task"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which the resources in this task should exist"
}

variable "sshkey" {
  default     = ""
  description = "The ssh key of the user (~/.ssh/id_rsa.pub)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Any tags which should be assigned to the resources in this task"
}
