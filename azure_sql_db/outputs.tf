output "server_id" {
  value       = azurerm_mssql_server.sql_server.id
  description = "The ID of the Microsoft SQL Server."
}

output "database_id" {
  value       = azurerm_mssql_database.sql_db.id
  description = "The ID of the MS SQL Database."
}

output "server_fqdn" {
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  description = "The fully qualified domain name of the Azure SQL Server."
}
