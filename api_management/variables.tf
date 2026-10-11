variable "name" {
  type        = string
  description = "The name of the API Management Service."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which the API Management Service should be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the API Management Service should exist."
}

variable "publisher_name" {
  type        = string
  description = "The name of owner of the service."
}

variable "publisher_email" {
  type        = string
  description = "The email of publisher/company."
}

variable "sku_name" {
  type        = string
  description = "sku_name is a string consisting of two parts separated by an underscore (e.g. Developer_1, Consumption_0, Standard_1)."
  default     = "Developer_1"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
