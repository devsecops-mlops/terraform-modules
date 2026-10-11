output "id" {
  value       = azurerm_private_endpoint.pe.id
  description = "The ID of the Private Endpoint."
}

output "name" {
  value       = azurerm_private_endpoint.pe.name
  description = "The name of the Private Endpoint."
}

output "private_ip_address" {
  value       = azurerm_private_endpoint.pe.private_service_connection[0].private_ip_address
  description = "The primary private IP address assigned to the Private Endpoint."
}
