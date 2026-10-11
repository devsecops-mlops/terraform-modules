variable "name" {
  type        = string
  description = "The name of the private endpoint."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the private endpoint should exist."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet from which private IP will be allocated."
}

variable "private_connection_resource_id" {
  type        = string
  description = "The ID of the Azure resource that the private endpoint connects to."
}

variable "subresource_names" {
  type        = list(string)
  description = "A list of subresource names which the Private Endpoint is able to connect to."
}

variable "is_manual_connection" {
  type        = bool
  description = "Does the Private Endpoint require manual approval from the remote resource owner?"
  default     = false
}

variable "request_message" {
  type        = string
  description = "A message passed to the owner for manual approval."
  default     = null
}

variable "private_dns_zone_ids" {
  type        = list(string)
  description = "A list of Private DNS Zone IDs to link with the Private Endpoint."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
