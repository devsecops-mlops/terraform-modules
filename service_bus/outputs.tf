output "id" {
  value       = azurerm_servicebus_namespace.sb.id
  description = "The ServiceBus Namespace ID."
}

output "name" {
  value       = azurerm_servicebus_namespace.sb.name
  description = "The ServiceBus Namespace name."
}

output "default_primary_connection_string" {
  value       = azurerm_servicebus_namespace.sb.default_primary_connection_string
  description = "The primary connection string for the authorization rule RootManageSharedAccessKey."
  sensitive   = true
}

output "queue_ids" {
  value       = { for k, v in azurerm_servicebus_queue.queues : k => v.id }
  description = "Map of queue names to their IDs."
}
