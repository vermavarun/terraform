locals {
  cosmosdb_instance_name = "${var.name}-cosmosdb-${random_integer.ri.result}"
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_cosmosdb_account" "this" {
  name                = "${local.cosmosdb_instance_name}-1"
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = var.kind

  enable_automatic_failover = true

  is_virtual_network_filter_enabled = length(var.vnet_rules) > 0 ? true : false
  dynamic "virtual_network_rule" {
    for_each = var.vnet_rules
    content {
      id = virtual_network_rule.value["subnet_id"]
    }
  }

  dynamic "capabilities" {
    for_each = var.capabilities
    content {
      name = capabilities.value
    }
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }

  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }

  geo_location {
 #   prefix            = "${local.cosmosdb_instance_name}-0"
    location          = var.location
    failover_priority = 0
  }

  tags = var.tags
}



resource "azurerm_management_lock" "this" {
  count = var.enable_delete_lock == false ? 0 : 1

  name       = "${local.cosmosdb_instance_name}-lock"
  scope      = azurerm_cosmosdb_account.this.id
  lock_level = "CanNotDelete"
  notes      = "Locked"
}