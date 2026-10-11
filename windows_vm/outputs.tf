output "id" {
  value       = azurerm_windows_virtual_machine.vm.id
  description = "The ID of the Windows Virtual Machine."
}

output "name" {
  value       = azurerm_windows_virtual_machine.vm.name
  description = "The name of the Windows Virtual Machine."
}

output "private_ip_address" {
  value       = azurerm_windows_virtual_machine.vm.private_ip_address
  description = "The primary private IP address of the Windows Virtual Machine."
}

output "nic_id" {
  value       = azurerm_network_interface.nic.id
  description = "The ID of the associated Network Interface."
}
