variable "name" {
  type        = string
  description = "The name of the Load Balancer."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the Load Balancer should exist."
}

variable "type" {
  type        = string
  description = "Type of load balancer: 'Public' or 'Internal'."
  default     = "Public"
}

variable "subnet_id" {
  type        = string
  description = "The Subnet ID for Internal Load Balancers."
  default     = null
}

variable "private_ip_address" {
  type        = string
  description = "Private IP address for internal Load Balancers. If omitted, dynamic allocation is used."
  default     = null
}

variable "probe_port" {
  type        = number
  description = "Port on which the Health Probe monitors backend instances."
  default     = 80
}

variable "probe_protocol" {
  type        = string
  description = "The protocol for the probe. Possible values are Http, Https or Tcp."
  default     = "Http"
}

variable "probe_path" {
  type        = string
  description = "The URI used for requesting health status from the endpoint if probe protocol is Http/Https."
  default     = "/"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
