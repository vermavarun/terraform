variable "name" {
  description = "Name of the CosmosDB instance"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the PostgreSQL Server. Changing this forces a new resource to be created."
}

# mandatory
variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "kind" {
  description = "Kind of CosmosDB Database e.g. MongoDB or GlobalDocumentDB"
  default     = "MongoDB"
}

variable "failover_location" {
  description = "Location for failover instance."
  default     = "uksouth"
}

variable "vnet_rule_name_prefix" {
  description = "Specifies prefix for vnet rule names."
  default     = "cosmosdb-vnet-rule-"
}

variable "vnet_rules" {
  description = "The list of maps, describing vnet rules. Valid map items: name, subnet_id."
  type        = list(map(string))
  default     = []
}

variable "enable_delete_lock" {
  description = "Enable delete lock to prevent this resource from being deleted"
  default     = "false"
}

variable "tags" {
  description = "The tags to associate with assets"
  type        = map(string)
  default     = {}
}

variable "max_staleness_prefix" {
  description = "Max Stale requests tolerated"
  default     = "200"
}

variable "max_interval_in_seconds" {
  description = "Max time amount of stateless tolerated"
  default     = "10"
}

variable "capabilities" {
  description = "The capabilities which should be enabled for this Cosmos DB account"
  type        = list(string)
  default     = []
}
