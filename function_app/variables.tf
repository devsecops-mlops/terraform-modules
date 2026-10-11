variable "name" {
  type        = string
  description = "The name of the Function App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Function App should exist."
}

variable "storage_account_name" {
  type        = string
  description = "The backend storage account name which will be used with this Function App."
}

variable "storage_account_access_key" {
  type        = string
  description = "The access key which will be used to access the backend storage account."
  sensitive   = true
}

variable "sku_name" {
  type        = string
  description = "The SKU for the Service Plan (Y1 for serverless Consumption)."
  default     = "Y1"
}

variable "app_settings" {
  type        = map(string)
  description = "A map of key-value pairs for Function App Settings."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
