output "id" {
  value       = azurerm_storage_account.sa.id
  description = "The ID of the Storage Account."
}

output "name" {
  value       = azurerm_storage_account.sa.name
  description = "The name of the Storage Account."
}

output "primary_blob_endpoint" {
  value       = azurerm_storage_account.sa.primary_blob_endpoint
  description = "The endpoint URL for blob storage in the primary replicate of the storage account."
}

output "primary_access_key" {
  value       = azurerm_storage_account.sa.primary_access_key
  description = "The primary access key for the storage account."
  sensitive   = true
}
