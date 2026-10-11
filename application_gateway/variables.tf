variable "name" {
  type        = string
  description = "The name of the Application Gateway."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Application Gateway should exist."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet allocated for Application Gateway."
}

variable "sku_name" {
  type        = string
  description = "The Name of the SKU to use for this Application Gateway."
  default     = "Standard_v2"
}

variable "sku_tier" {
  type        = string
  description = "The Tier of the SKU to use for this Application Gateway."
  default     = "Standard_v2"
}

variable "capacity" {
  type        = number
  description = "The Capacity of the SKU to use for this Application Gateway."
  default     = 2
}

variable "frontend_port" {
  type        = number
  description = "The Frontend Port to listen on."
  default     = 80
}

variable "backend_port" {
  type        = number
  description = "The Backend Port to route traffic to."
  default     = 80
}

variable "backend_protocol" {
  type        = string
  description = "The Backend Protocol to route traffic with (Http or Https)."
  default     = "Http"
}

variable "backend_ip_addresses" {
  type        = list(string)
  description = "A list of IP Addresses which should be part of the Backend Address Pool."
  default     = []
}

variable "backend_fqdns" {
  type        = list(string)
  description = "A list of FQDNs which should be part of the Backend Address Pool."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
