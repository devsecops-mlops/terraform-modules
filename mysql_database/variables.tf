variable "server_name" {
  type        = string
  description = "The name which should be used for this MySQL Flexible Server."
}

variable "database_name" {
  type        = string
  description = "The name of the MySQL Flexible Database."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the MySQL Flexible Server should exist."
}

variable "location" {
  type        = string
  description = "The Azure region where the MySQL Flexible Server should exist."
}

variable "admin_username" {
  type        = string
  description = "The Administrator login for the MySQL Flexible Server."
  default     = "mysqladmin"
}

variable "admin_password" {
  type        = string
  description = "The Password associated with the administrator login."
  sensitive   = true
}

variable "sku_name" {
  type        = string
  description = "The SKU Name for this MySQL Flexible Server."
  default     = "B_Standard_B1ms"
}

variable "mysql_version" {
  type        = string
  description = "The version of the MySQL Flexible Server to use (e.g. 5.7, 8.0.21)."
  default     = "8.0.21"
}

variable "storage_size_gb" {
  type        = number
  description = "The max storage allowed for a server in gigabytes."
  default     = 20
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
