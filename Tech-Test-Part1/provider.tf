terraform {
  required_version = ">=1.3.9"

  required_providers {
    azurerm = {

        version = "3.52.0"
    }
  }
# To store state file remotely we can add storage account detials.
# backend "azurerm" {
#   subscription_id = "value"
#   resource_group_name = "value"
#   storage_account_name = "value"
#   container_name = "value"
#   key = "value"
# }
}

provider "azurerm" {
  features {}
}