output "id" {
  value       = azurerm_linux_function_app.func.id
  description = "The ID of the Linux Function App."
}

output "name" {
  value       = azurerm_linux_function_app.func.name
  description = "The name of the Linux Function App."
}

output "default_hostname" {
  value       = azurerm_linux_function_app.func.default_hostname
  description = "The default hostname associated with the Function App."
}

output "service_plan_id" {
  value       = azurerm_service_plan.asp.id
  description = "The ID of the associated Service Plan."
}
