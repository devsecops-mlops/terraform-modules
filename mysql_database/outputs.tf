output "server_id" {
  value       = azurerm_mysql_flexible_server.mysql.id
  description = "The ID of the MySQL Flexible Server."
}

output "database_id" {
  value       = azurerm_mysql_flexible_database.db.id
  description = "The ID of the MySQL Flexible Database."
}

output "fqdn" {
  value       = azurerm_mysql_flexible_server.mysql.fqdn
  description = "The fully qualified domain name of the MySQL Flexible Server."
}
