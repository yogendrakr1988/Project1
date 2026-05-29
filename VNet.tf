resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet97
  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

variable "vnet97" {}