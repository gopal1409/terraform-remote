resource "azurerm_storage_account" "mysa" {
    ####the name if always varaible dynamic varaible
  name                     = "mysa${random_string.random.id}" #when i run it will always generate a random string with an id
  ##3once it generate the storage account name it need to be attached to a rg
  resource_group_name      = azurerm_resource_group.myrg1.name
  location                 = azurerm_resource_group.myrg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  provider = azurerm.provider2-westus
#static variable
##when you call a dynamic varaible it will be always in $format
  tags = {
    environment = "staging"
  }
}