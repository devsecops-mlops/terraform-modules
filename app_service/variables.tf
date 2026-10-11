variable "name" {
  type        = string
  description = "The name which should be used for this Linux Web App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the App Service should exist."
}

variable "os_type" {
  type        = string
  description = "The O/S type for the App Services hosted in this plan (Linux or Windows)."
  default     = "Linux"
}

variable "sku_name" {
  type        = string
  description = "The SKU for the Service Plan (e.g. B1, P1v2, S1)."
  default     = "B1"
}

variable "app_settings" {
  type        = map(string)
  description = "A map of key-value pairs for App Settings."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
