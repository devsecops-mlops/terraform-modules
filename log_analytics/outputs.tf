output "id" {
  value       = azurerm_log_analytics_workspace.law.id
  description = "The ID of the Log Analytics Workspace."
}

output "name" {
  value       = azurerm_log_analytics_workspace.law.name
  description = "The name of the Log Analytics Workspace."
}

output "workspace_id" {
  value       = azurerm_log_analytics_workspace.law.workspace_id
  description = "The Workspace (Customer) ID for the Log Analytics Workspace."
}

output "primary_shared_key" {
  value       = azurerm_log_analytics_workspace.law.primary_shared_key
  description = "The Primary shared key for the Log Analytics Workspace."
  sensitive   = true
}
