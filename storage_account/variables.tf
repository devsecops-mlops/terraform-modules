variable "name" {
  type        = string
  description = "The name of the storage account (must be 3-24 characters, lowercase alphanumeric)."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the storage account should exist."
}

variable "account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account (Standard or Premium)."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Defines the type of replication to use (LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS)."
  default     = "LRS"
}

variable "containers" {
  type        = list(string)
  description = "List of blob containers to create inside this storage account."
  default     = []
}

variable "container_access_type" {
  type        = string
  description = "The Access Level configured for the containers (blob, container or private)."
  default     = "private"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
