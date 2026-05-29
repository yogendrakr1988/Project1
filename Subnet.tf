resource "azurerm_subnet" "subnet" {
 for_each = var.subnet99
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.rg[each.value.resource_group_name].name
  virtual_network_name = azurerm_virtual_network.vnet[each.value.virtual_network_name].name
  address_prefixes     = ["10.0.1.0/24"]
}

variable "subnet99" {}

