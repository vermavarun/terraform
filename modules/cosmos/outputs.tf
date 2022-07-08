output "primary_connectionstring_rw" {
  value = "${azurerm_cosmosdb_account.this.connection_strings.0}"
}

output "secondary_connectionstring_rw" {
  value = "${azurerm_cosmosdb_account.this.connection_strings.1}"
}

output "primary_connectionstring_ro" {
  value = "${azurerm_cosmosdb_account.this.connection_strings.2}"
}

output "secondary_connectionstring_ro" {
  value = "${azurerm_cosmosdb_account.this.connection_strings.3}"
}

# output "primary_master_key_rw" {
#   value = "${azurerm_cosmosdb_account.this.primary_master_key}"
# }

# output "primary_master_key_ro" {
#   value = "${azurerm_cosmosdb_account.this.primary_readonly_master_key}"
# }

# output "secondary_master_key_rw" {
#   value = "${azurerm_cosmosdb_account.this.secondary_master_key}"
# }

# output "secondary_master_key_ro" {
#   value = "${azurerm_cosmosdb_account.this.secondary_readonly_master_key}"
# }

output "name" {
  value = "${azurerm_cosmosdb_account.this.name}"
}