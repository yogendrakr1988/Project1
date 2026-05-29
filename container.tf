resource "azurerm_storage_container" "cntr" {

  for_each              = var.container
  name                  = each.value.name
  storage_account_id    = azurerm_storage_account.stg[each.value.storage_account_key].id
  container_access_type = each.value.container_access_type
}

variable "container" {}