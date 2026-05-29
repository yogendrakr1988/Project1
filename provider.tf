terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}
terraform {
  backend "azurerm" {
    resource_group_name = "dev-raja"
    storage_account_name = "devrajastg"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "devrajacntr"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "yogendra.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
}