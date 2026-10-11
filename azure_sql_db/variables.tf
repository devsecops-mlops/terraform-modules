variable "server_name" {
  type        = string
  description = "The name of the Microsoft SQL Server."
}

variable "database_name" {
  type        = string
  description = "The name of the MS SQL Database."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the SQL Server and Database should exist."
}

variable "admin_username" {
  type        = string
  description = "The administrator login name for the new server."
  default     = "sqladmin"
}

variable "admin_password" {
  type        = string
  description = "The password associated with the administrator_login for the new server."
  sensitive   = true
}

variable "sku_name" {
  type        = string
  description = "Specifies the name of the SKU used by the database (e.g. S0, GP_Gen5_2, etc.)."
  default     = "S0"
}

variable "max_size_gb" {
  type        = number
  description = "The max size of the database in gigabytes."
  default     = 5
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
