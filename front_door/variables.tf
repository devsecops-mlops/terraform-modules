variable "name" {
  type        = string
  description = "The name of the Front Door profile."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "sku_name" {
  type        = string
  description = "The SKU of the Front Door profile. Possible values are Standard_AzureFrontDoor or Premium_AzureFrontDoor."
  default     = "Standard_AzureFrontDoor"
}

variable "endpoint_name" {
  type        = string
  description = "The name of the Front Door endpoint. Defaults to {profile_name}-ep if not set."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
