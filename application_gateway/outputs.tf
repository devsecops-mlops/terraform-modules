output "id" {
  value       = azurerm_application_gateway.appgw.id
  description = "The ID of the Application Gateway."
}

output "name" {
  value       = azurerm_application_gateway.appgw.name
  description = "The name of the Application Gateway."
}

output "public_ip_address" {
  value       = azurerm_public_ip.appgw_pip.ip_address
  description = "The Public IP address allocated to the Application Gateway."
}
