resource "azurerm_resource_group" "example" {
  name     = "tfstate-rg"
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "senlab029tfstate"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
