variable "name" {
  type        = string
  description = "Specifies the name which should be used for this Synapse Workspace."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which the Synapse Workspace should exist."
}

variable "location" {
  type        = string
  description = "Specifies the Azure location where the Synapse Workspace should exist."
}

variable "storage_data_lake_gen2_filesystem_id" {
  type        = string
  description = "Specifies the ID of storage data lake gen2 filesystem for Azure Synapse Workspace."
}

variable "sql_administrator_login" {
  type        = string
  description = "Specifies The login name of the SQL administrator."
  default     = "sqladmin"
}

variable "sql_administrator_login_password" {
  type        = string
  description = "The Password associated with the sql_administrator_login for the Synapse Workspace."
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
