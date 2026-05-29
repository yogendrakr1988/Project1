resource "azurerm_linux_virtual_machine" "vm" {
for_each = var.vms98
  name                = each.value.name
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  location            = azurerm_resource_group.rg[each.value.resource_group_name].location
  size                = "Standard_B2as_v2"
  admin_username      = "lalakaraja"
  admin_password = "Lala@123456"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic[
      each.value.network_interface_name
    ].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

variable "vms98" {}