output "id" {
  value       = azurerm_synapse_workspace.synapse.id
  description = "The ID of the Synapse Workspace."
}

output "name" {
  value       = azurerm_synapse_workspace.synapse.name
  description = "The name of the Synapse Workspace."
}

output "connectivity_endpoints" {
  value       = azurerm_synapse_workspace.synapse.connectivity_endpoints
  description = "A list of connectivity endpoints for the Azure Synapse Workspace."
}

output "identity_principal_id" {
  value       = azurerm_synapse_workspace.synapse.identity[0].principal_id
  description = "The Principal ID associated with the Synapse Workspace SystemAssigned identity."
}
