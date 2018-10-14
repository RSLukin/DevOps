resource "azurerm_virtual_machine" "test" {
  name                  = "${var.prefix}-vm"
  location              = "${azurerm_resource_group.main.location}"
  resource_group_name   = "${azurerm_resource_group.main.name}"
  network_interface_ids = ["${azurerm_network_interface.main.id}"]
  vm_size               = "Standard_F2"

  # This means the OS Disk will be deleted when Terraform destroys the Virtual Machine
  # NOTE: This may not be optimal in all cases.
  delete_os_disk_on_termination = true

  # This means the Data Disk Disk will be deleted when Terraform destroys the Virtual Machine
  # NOTE: This may not be optimal in all cases.
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
   }

  storage_os_disk {
    name              = "osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "task1vm"
    admin_username = "rlukin"
    custom_data = "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlX3VwZ3JhZGU6IHRydWUKd3JpdGVfZmlsZXM6CiAgLSBwYXRoOiAvZXRjL3N5c3RlbWQvc3lzdGVtL2RvY2tlci5zZXJ2aWNlLmQvZG9ja2VyLmNvbmYKICAgIGNvbnRlbnQ6IHwKICAgICAgW1NlcnZpY2VdCiAgICAgICAgRXhlY1N0YXJ0PQogICAgICAgIEV4ZWNTdGFydD0vdXNyL2Jpbi9kb2NrZXJkCiAgLSBwYXRoOiAvZXRjL2RvY2tlci9kYWVtb24uanNvbgogICAgY29udGVudDogfAogICAgICB7CiAgICAgICAgImhvc3RzIjogWyJmZDovLyIsInRjcDovLzEyNy4wLjAuMToyMzc1Il0KICAgICAgfQpydW5jbWQ6CiAgLSBhcHQgaW5zdGFsbCBkZWZhdWx0LWpyZSAteQogIC0gd2dldCAtcSAtTyAtIGh0dHBzOi8vcGtnLmplbmtpbnMuaW8vZGViaWFuL2plbmtpbnMtY2kub3JnLmtleSB8IHN1ZG8gYXB0LWtleSBhZGQgLQogIC0gc2ggLWMgJ2VjaG8gZGViIGh0dHA6Ly9wa2cuamVua2lucy5pby9kZWJpYW4tc3RhYmxlIGJpbmFyeS8gPiAvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC9qZW5raW5zLmxpc3QnCiAgLSBhcHQtZ2V0IHVwZGF0ZSAmJiBhcHQtZ2V0IGluc3RhbGwgamVua2lucyAteQogIC0gY3VybCAtc1NMIGh0dHBzOi8vZ2V0LmRvY2tlci5jb20vIHwgc2gKICAtIHVzZXJtb2QgLWFHIGRvY2tlciBhenVyZXVzZXIKICAtIHVzZXJtb2QgLWFHIGRvY2tlciBqZW5raW5zCiAgLSBzZXJ2aWNlIGplbmtpbnMgcmVzdGFydA=="
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
    path     = "/home/rlukin/.ssh/authorized_keys"
    key_data = "${var.sshkey}"
    }
  }

  tags = "${var.tags}"
}
