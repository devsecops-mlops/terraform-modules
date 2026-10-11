variable "name" {
  type        = string
  description = "The name of the NAT Gateway."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the NAT Gateway should exist."
}

variable "create_public_ip" {
  type        = bool
  description = "Whether to create and associate a Public IP with this NAT Gateway."
  default     = true
}

variable "idle_timeout_in_minutes" {
  type        = number
  description = "The idle timeout in minutes which can be set between 4 and 120 minutes."
  default     = 4
}

variable "zones" {
  type        = list(string)
  description = "A list of availability zones in which the NAT Gateway and Public IP should be located."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
