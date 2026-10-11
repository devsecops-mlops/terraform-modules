output "id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the resource group."
}

output "name" {
  value       = azurerm_resource_group.rg.name
  description = "The Name of the resource group."
}

output "location" {
  value       = azurerm_resource_group.rg.location
  description = "The Location of the resource group."
}
