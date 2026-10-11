variable "name" {
  type        = string
  description = "The name of the Key Vault."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Key Vault should exist."
}

variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID. If not supplied, current client tenant is used."
  default     = null
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the Key Vault. Can be standard or premium."
  default     = "standard"
}

variable "soft_delete_retention_days" {
  type        = number
  description = "The number of days that items should be retained once soft-deleted."
  default     = 7
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Is Purge Protection enabled for this Key Vault?"
  default     = false
}

variable "enable_rbac_authorization" {
  type        = bool
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
