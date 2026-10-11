output "id" {
  value       = azurerm_linux_web_app.app.id
  description = "The ID of the Linux Web App."
}

output "name" {
  value       = azurerm_linux_web_app.app.name
  description = "The name of the Linux Web App."
}

output "default_hostname" {
  value       = azurerm_linux_web_app.app.default_hostname
  description = "The default hostname associated with the Web App."
}

output "service_plan_id" {
  value       = azurerm_service_plan.asp.id
  description = "The ID of the App Service Plan."
}
