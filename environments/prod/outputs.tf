output "resource_group_name" {
  value       = module.resource_group.name
  description = "The name of the provisioned resource group."
}

output "vnet_id" {
  value       = module.virtual_network.id
  description = "The ID of the virtual network."
}

output "subnet_ids" {
  value       = module.virtual_network.subnet_ids
  description = "Map of subnet IDs."
}

output "key_vault_uri" {
  value       = module.key_vault.vault_uri
  description = "The URI of the Key Vault."
}

output "log_analytics_workspace_id" {
  value       = module.log_analytics.workspace_id
  description = "The Customer ID of the Log Analytics Workspace."
}

output "storage_account_name" {
  value       = module.storage_account.name
  description = "The primary storage account name."
}
