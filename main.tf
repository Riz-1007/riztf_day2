provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "resource_group" {
    name = var.rizrg_name
    location = var.location
    tags = var.tags
}

resource "azurerm_storage_account" "rizrg_name" {
  name                     = "rizstorage"
  resource_group_name      = azurerm_resource_group.rizrg_name.name
  location                 = azurerm_resource_group.rizrg_name.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}