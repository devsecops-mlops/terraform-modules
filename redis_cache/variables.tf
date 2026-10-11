variable "name" {
  type        = string
  description = "The name of the Redis Cache."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Redis Cache should exist."
}

variable "capacity" {
  type        = number
  description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6."
  default     = 1
}

variable "family" {
  type        = string
  description = "The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)."
  default     = "C"
}

variable "sku_name" {
  type        = string
  description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
  default     = "Basic"
}

variable "enable_non_ssl_port" {
  type        = bool
  description = "Enable the non-SSL port (6379) -- not recommended for production."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
