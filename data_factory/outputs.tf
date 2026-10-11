output "id" {
  value       = azurerm_data_factory.adf.id
  description = "The ID of the Data Factory."
}

output "name" {
  value       = azurerm_data_factory.adf.name
  description = "The name of the Data Factory."
}

output "identity_principal_id" {
  value       = azurerm_data_factory.adf.identity[0].principal_id
  description = "The Principal ID of the Data Factory SystemAssigned Identity."
}
