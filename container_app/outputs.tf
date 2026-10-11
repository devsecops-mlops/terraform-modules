output "id" {
  value       = azurerm_container_app.app.id
  description = "The ID of the Container App."
}

output "name" {
  value       = azurerm_container_app.app.name
  description = "The name of the Container App."
}

output "environment_id" {
  value       = azurerm_container_app_environment.env.id
  description = "The ID of the Container App Environment."
}

output "fqdn" {
  value       = azurerm_container_app.app.ingress[0].fqdn
  description = "The FQDN of the Container App."
}
