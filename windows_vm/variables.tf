variable "name" {
  type        = string
  description = "The name of the Windows Virtual Machine."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the VM should exist."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet where the Network Interface should be located."
}

variable "size" {
  type        = string
  description = "The SKU which should be used for this Virtual Machine, such as Standard_D2s_v3."
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  type        = string
  description = "The username of the local administrator."
  default     = "azureadmin"
}

variable "admin_password" {
  type        = string
  description = "The password of the local administrator."
  sensitive   = true
}

variable "os_disk_type" {
  type        = string
  description = "The Type of Storage Account which should back this the Internal OS Disk."
  default     = "Standard_LRS"
}

variable "image_publisher" {
  type        = string
  description = "Publisher of the Windows OS image."
  default     = "MicrosoftWindowsServer"
}

variable "image_offer" {
  type        = string
  description = "Offer of the Windows OS image."
  default     = "WindowsServer"
}

variable "image_sku" {
  type        = string
  description = "SKU of the Windows OS image."
  default     = "2022-Datacenter"
}

variable "image_version" {
  type        = string
  description = "Version of the Windows OS image."
  default     = "latest"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
