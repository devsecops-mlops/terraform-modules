variable "name" {
  type        = string
  description = "Specifies the name of the Data Factory."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Data Factory."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
