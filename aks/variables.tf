variable "name" {
  type        = string
  description = "The name of the Managed Kubernetes Cluster (AKS)."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Managed Kubernetes Cluster should exist."
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix specified when creating the managed cluster. Defaults to cluster name if null."
  default     = null
}

variable "node_count" {
  type        = number
  description = "The initial number of nodes which should exist in this Node Pool."
  default     = 2
}

variable "vm_size" {
  type        = string
  description = "The size of the Virtual Machine, such as Standard_D2s_v3."
  default     = "Standard_D2s_v3"
}

variable "vnet_subnet_id" {
  type        = string
  description = "The ID of a Subnet where the Agents should exist."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
