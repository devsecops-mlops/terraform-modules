output "id" {
  value       = azurerm_api_management.apim.id
  description = "The ID of the API Management Service."
}

output "name" {
  value       = azurerm_api_management.apim.name
  description = "The name of the API Management Service."
}

output "gateway_url" {
  value       = azurerm_api_management.apim.gateway_url
  description = "The URL of the Gateway for the API Management Service."
}

output "management_api_url" {
  value       = azurerm_api_management.apim.management_api_url
  description = "The URL for the Management API associated with this API Management service."
}
