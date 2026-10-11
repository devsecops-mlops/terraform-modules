resource "azurerm_eventgrid_topic" "topic" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  input_schema        = var.input_schema
  tags                = var.tags
}
