resource "azurerm_network_interface" "nic" {
    for_each = var.nic99
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet [each.value.subnet_name].id 
    private_ip_address_allocation = "Dynamic"
  }
}

variable "nic99" {}