resource "azurerm_service_plan" "asp" {
  name                = "${var.name}-asp"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_linux_web_app" "app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp.id
  app_settings        = var.app_settings
  tags                = var.tags

  site_config {
    always_on = var.sku_name == "F1" ? false : true
  }
}
