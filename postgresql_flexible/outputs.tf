output "server_id" {
  value       = azurerm_postgresql_flexible_server.postgres.id
  description = "The ID of the PostgreSQL Flexible Server."
}

output "database_id" {
  value       = azurerm_postgresql_flexible_database.db.id
  description = "The ID of the PostgreSQL Flexible Database."
}

output "fqdn" {
  value       = azurerm_postgresql_flexible_server.postgres.fqdn
  description = "The fully qualified domain name of the PostgreSQL Flexible Server."
}
