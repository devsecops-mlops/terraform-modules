output "id" {
  value       = azurerm_lb.lb.id
  description = "The ID of the Load Balancer."
}

output "name" {
  value       = azurerm_lb.lb.name
  description = "The name of the Load Balancer."
}

output "backend_address_pool_id" {
  value       = azurerm_lb_backend_address_pool.backend_pool.id
  description = "The ID of the backend address pool."
}

output "frontend_ip_configuration" {
  value       = azurerm_lb.lb.frontend_ip_configuration
  description = "The frontend IP configurations."
}
