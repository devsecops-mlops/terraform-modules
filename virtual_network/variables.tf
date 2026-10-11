variable "name" {
  type        = string
  description = "The name of the virtual network."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the virtual network."
}

variable "location" {
  type        = string
  description = "The Azure region where the virtual network should exist."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
  description = "A map of subnets to create within the virtual network."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
