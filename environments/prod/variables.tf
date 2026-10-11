variable "project_name" {
  type        = string
  description = "Project or workload prefix for resource naming."
}

variable "environment" {
  type        = string
  description = "Target deployment environment (e.g. dev, prod)."
}

variable "location" {
  type        = string
  description = "Azure region where resources will be provisioned."
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
  description = "Map of subnets and their CIDR ranges."
}

variable "security_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = optional(string)
    destination_port_range     = optional(string)
    source_address_prefix      = optional(string)
    destination_address_prefix = optional(string)
    description                = optional(string)
  }))
  description = "Network security rules to apply."
  default     = []
}

variable "log_retention_days" {
  type        = number
  description = "Log Analytics Workspace retention period in days."
  default     = 90
}

variable "storage_replication_type" {
  type        = string
  description = "Storage account replication type (e.g. LRS, GRS, ZRS)."
  default     = "GRS"
}

variable "tags" {
  type        = map(string)
  description = "Base tags to apply to all resources."
  default     = {}
}
