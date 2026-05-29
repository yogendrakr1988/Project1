resource "azurerm_storage_account" "stg" {
  # depends_on               = [azurerm_resource_group.rg]
  for_each                 = var.stgs
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.rg[each.value.resource_group_name].name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

}

variable "stgs" {}

