variable "prefix" {
  default     = "task1"
  description = "The Prefix used for all resources in this example"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which the resources in this example should exist"
}

variable "tags" {
  type        = "map"
  default     = "Tag for Task1"
  description = "Any tags which should be assigned to the resources in this example"
}
