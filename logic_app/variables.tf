variable "name" {
  type        = string
  description = "Specifies the name of the Logic App Workflow."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which the Logic App Workflow should be created."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the Logic App Workflow should exist."
}

variable "workflow_parameters" {
  type        = map(string)
  description = "A map of Key-Value pairs of parameters for this workflow."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
