output "id" {
  value       = azurerm_bastion_host.bastion.id
  description = "The ID of the Bastion Host."
}

output "name" {
  value       = azurerm_bastion_host.bastion.name
  description = "The name of the Bastion Host."
}

output "dns_name" {
  value       = azurerm_bastion_host.bastion.dns_name
  description = "The FQDN for the Bastion Host."
}

output "public_ip_address" {
  value       = azurerm_public_ip.bastion_pip.ip_address
  description = "The public IP address allocated to the Bastion Host."
}
