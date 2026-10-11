output "id" {
  value       = azurerm_nat_gateway.nat_gw.id
  description = "The ID of the NAT Gateway."
}

output "name" {
  value       = azurerm_nat_gateway.nat_gw.name
  description = "The name of the NAT Gateway."
}

output "public_ip_id" {
  value       = var.create_public_ip ? azurerm_public_ip.pip[0].id : null
  description = "The ID of the Public IP associated with the NAT Gateway."
}

output "public_ip_address" {
  value       = var.create_public_ip ? azurerm_public_ip.pip[0].ip_address : null
  description = "The Public IP address assigned to the NAT Gateway."
}
