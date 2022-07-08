module "azurerm_cosmosdb_account"{
  source                  = "./modules/cosmos"
  location                = "West Europe"
  resource_group_name     = var.resource_group_name
  name                    = "frommodule"
  kind                    = "GlobalDocumentDB"
  max_staleness_prefix    = 100001
  max_interval_in_seconds = 86400
  enable_delete_lock      = false
}