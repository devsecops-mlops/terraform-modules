variable "name" {
  type        = string
  description = "The name of the Azure Bastion Host."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Azure Bastion Host should exist."
}

variable "sku" {
  type        = string
  description = "The SKU of the Bastion Host. Acceptable values are Basic, Standard, and Developer."
  default     = "Standard"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet named AzureBastionSubnet."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
