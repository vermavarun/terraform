variable "storage_account_name" {
  description = "The name of the Storage Account."
  type        = string
  default     = "trsamentor"
}

variable "resource_group_name" {
  description = "The name of the resource group containing storage account"
  type        = string
  default     = "sbox-ha1-dev-rg"
}
