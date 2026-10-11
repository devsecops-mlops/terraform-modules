variable "server_name" {
  type        = string
  description = "The name which should be used for this PostgreSQL Flexible Server."
}

variable "database_name" {
  type        = string
  description = "The name of the PostgreSQL Flexible Database."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the PostgreSQL Flexible Server should exist."
}

variable "location" {
  type        = string
  description = "The Azure region where the PostgreSQL Flexible Server should exist."
}

variable "admin_username" {
  type        = string
  description = "The Administrator login for the PostgreSQL Flexible Server."
  default     = "psqladmin"
}

variable "admin_password" {
  type        = string
  description = "The Password associated with the administrator login."
  sensitive   = true
}

variable "sku_name" {
  type        = string
  description = "The SKU Name for this PostgreSQL Flexible Server."
  default     = "B_Standard_B1ms"
}

variable "postgres_version" {
  type        = string
  description = "The version of PostgreSQL Flexible Server to use (e.g. 13, 14, 15, 16)."
  default     = "15"
}

variable "storage_mb" {
  type        = number
  description = "The max storage allowed for the PostgreSQL Flexible Server in MB."
  default     = 32768
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
