output "storage_account_name" {
  description = "The name of storage account"
  value       = module.azurerm_cosmosdb_account.name
}
