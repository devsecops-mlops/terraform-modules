variable "name" {
  type        = string
  description = "The name of the Container App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Container App should exist."
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "The ID for the Log Analytics Workspace to link to the Container App Environment."
  default     = null
}

variable "image" {
  type        = string
  description = "The image to use for the container."
  default     = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
}

variable "cpu" {
  type        = number
  description = "The amount of vCPU allocated to the container. Valid values include 0.25, 0.5, 0.75, 1.0, etc."
  default     = 0.25
}

variable "memory" {
  type        = string
  description = "The amount of memory allocated to the container (e.g. 0.5Gi, 1.0Gi)."
  default     = "0.5Gi"
}

variable "target_port" {
  type        = number
  description = "The target port on the container to forward ingress traffic to."
  default     = 80
}

variable "external_enabled" {
  type        = bool
  description = "Should this Container App be accessible from the internet?"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
