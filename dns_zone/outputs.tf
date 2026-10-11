output "id" {
  value       = azurerm_dns_zone.zone.id
  description = "The ID of the DNS Zone."
}

output "name" {
  value       = azurerm_dns_zone.zone.name
  description = "The name of the DNS Zone."
}

output "name_servers" {
  value       = azurerm_dns_zone.zone.name_servers
  description = "A list of name servers that host the DNS zone."
}

output "max_number_of_record_sets" {
  value       = azurerm_dns_zone.zone.max_number_of_record_sets
  description = "Maximum number of record sets that can be created in this DNS zone."
}
