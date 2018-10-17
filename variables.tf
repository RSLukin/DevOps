# General variables
variable "prefix" {
  default     = "task1_final"
  description = "The Prefix used for all resources in this task"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which the resources in this task should exist"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Any tags which should be assigned to the resources in this task"
}

# VM variables

variable "computer_name" {
  default     = "vm_final"
  description = "VM name"
}

variable "admin_username" {
  default     = "rlukin"
  description = "Admin user name"
}

variable "os_disk_name" {
  default     = "taks1_disk"
  description = "OS disk name"
}


variable "sshkey" {
  default     = ""
  description = "The ssh key of the user (~/.ssh/id_rsa.pub)"
}

variable "custom_data" {
  default     = "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlX3VwZ3JhZGU6IHRydWUKd3JpdGVfZmlsZXM6CiAgLSBwYXRoOiAvZXRjL3N5c3RlbWQvc3lzdGVtL2RvY2tlci5zZXJ2aWNlLmQvZG9ja2VyLmNvbmYKICAgIGNvbnRlbnQ6IHwKICAgICAgW1NlcnZpY2VdCiAgICAgICAgRXhlY1N0YXJ0PQogICAgICAgIEV4ZWNTdGFydD0vdXNyL2Jpbi9kb2NrZXJkCiAgLSBwYXRoOiAvZXRjL2RvY2tlci9kYWVtb24uanNvbgogICAgY29udGVudDogfAogICAgICB7CiAgICAgICAgImhvc3RzIjogWyJmZDovLyIsInRjcDovLzEyNy4wLjAuMToyMzc1Il0KICAgICAgfQpydW5jbWQ6CiAgLSBhcHQgaW5zdGFsbCBkZWZhdWx0LWpyZSAteQogIC0gd2dldCAtcSAtTyAtIGh0dHBzOi8vcGtnLmplbmtpbnMuaW8vZGViaWFuL2plbmtpbnMtY2kub3JnLmtleSB8IHN1ZG8gYXB0LWtleSBhZGQgLQogIC0gc2ggLWMgJ2VjaG8gZGViIGh0dHA6Ly9wa2cuamVua2lucy5pby9kZWJpYW4tc3RhYmxlIGJpbmFyeS8gPiAvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC9qZW5raW5zLmxpc3QnCiAgLSBhcHQtZ2V0IHVwZGF0ZSAmJiBhcHQtZ2V0IGluc3RhbGwgamVua2lucyAteQogIC0gY3VybCAtc1NMIGh0dHBzOi8vZ2V0LmRvY2tlci5jb20vIHwgc2gKICAtIHVzZXJtb2QgLWFHIGRvY2tlciBhenVyZXVzZXIKICAtIHVzZXJtb2QgLWFHIGRvY2tlciBqZW5raW5zCiAgLSBzZXJ2aWNlIGplbmtpbnMgcmVzdGFydA=="
  description = "(Optional) Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes."
}



