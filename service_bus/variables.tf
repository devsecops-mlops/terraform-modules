variable "name" {
  type        = string
  description = "Specifies the name of the ServiceBus Namespace resource."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "sku" {
  type        = string
  description = "Defines which tier to use. Options are Basic, Standard or Premium."
  default     = "Standard"
}

variable "queues" {
  type        = list(string)
  description = "A list of queue names to create inside the ServiceBus Namespace."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
