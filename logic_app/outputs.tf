output "id" {
  value       = azurerm_logic_app_workflow.logic.id
  description = "The ID of the Logic App Workflow."
}

output "name" {
  value       = azurerm_logic_app_workflow.logic.name
  description = "The name of the Logic App Workflow."
}

output "access_endpoint" {
  value       = azurerm_logic_app_workflow.logic.access_endpoint
  description = "The Access Endpoint for the Logic App Workflow."
}
