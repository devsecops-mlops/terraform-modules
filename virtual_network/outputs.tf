output "id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network."
}

output "name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the virtual network."
}

output "address_space" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "The address spaces of the virtual network."
}

output "subnet_ids" {
  value       = { for k, v in azurerm_subnet.subnets : k => v.id }
  description = "Map of subnet names to their respective IDs."
}
