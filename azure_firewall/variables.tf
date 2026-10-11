variable "name" {
  type        = string
  description = "The name of the Azure Firewall."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Azure Firewall should exist."
}

variable "sku_tier" {
  type        = string
  description = "SKU tier of the Firewall. Possible values are Standard, Premium, and Basic."
  default     = "Standard"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet named AzureFirewallSubnet."
}

variable "firewall_policy_id" {
  type        = string
  description = "The ID of the Firewall Policy applied to this Firewall."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
