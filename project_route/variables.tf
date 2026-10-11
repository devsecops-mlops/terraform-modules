variable "name" {
  type        = string
  description = "The name of the route table."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the route table should exist."
}

variable "disable_bgp_route_propagation" {
  type        = bool
  description = "Controls propagation of routes learned by BGP on that route table."
  default     = false
}

variable "routes" {
  type = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
  description = "List of user-defined routes."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
