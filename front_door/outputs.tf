output "id" {
  value       = azurerm_cdn_frontdoor_profile.profile.id
  description = "The ID of the Front Door profile."
}

output "name" {
  value       = azurerm_cdn_frontdoor_profile.profile.name
  description = "The name of the Front Door profile."
}

output "endpoint_id" {
  value       = azurerm_cdn_frontdoor_endpoint.endpoint.id
  description = "The ID of the Front Door endpoint."
}

output "host_name" {
  value       = azurerm_cdn_frontdoor_endpoint.endpoint.host_name
  description = "The host name of the Front Door endpoint."
}
