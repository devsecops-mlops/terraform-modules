resource "azurerm_service_plan" "asp" {
  name                = "${var.name}-asp"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_linux_function_app" "func" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  service_plan_id            = azurerm_service_plan.asp.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  app_settings               = var.app_settings
  tags                       = var.tags

  site_config {}
}
