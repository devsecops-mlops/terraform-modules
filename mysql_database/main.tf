resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = var.server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  sku_name               = var.sku_name
  version                = var.mysql_version
  tags                   = var.tags

  storage {
    size_gb = var.storage_size_gb
  }
}

resource "azurerm_mysql_flexible_database" "db" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_ci"
}
