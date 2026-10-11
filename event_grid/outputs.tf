output "id" {
  value       = azurerm_eventgrid_topic.topic.id
  description = "The EventGrid Topic ID."
}

output "name" {
  value       = azurerm_eventgrid_topic.topic.name
  description = "The EventGrid Topic name."
}

output "endpoint" {
  value       = azurerm_eventgrid_topic.topic.endpoint
  description = "The Endpoint associated with the EventGrid Topic."
}

output "primary_access_key" {
  value       = azurerm_eventgrid_topic.topic.primary_access_key
  description = "The Primary Shared Access Key for the EventGrid Topic."
  sensitive   = true
}
