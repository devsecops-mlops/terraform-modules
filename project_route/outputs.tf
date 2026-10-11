output "id" {
  value       = azurerm_route_table.route_table.id
  description = "The ID of the route table."
}

output "name" {
  value       = azurerm_route_table.route_table.name
  description = "The name of the route table."
}

output "subnets" {
  value       = azurerm_route_table.route_table.subnets
  description = "The collection of Subnets to which this Route Table is attached."
}
