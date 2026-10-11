resource "azurerm_servicebus_namespace" "sb" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags
}

resource "azurerm_servicebus_queue" "queues" {
  for_each     = toset(var.queues)
  name         = each.value
  namespace_id = azurerm_servicebus_namespace.sb.id
}
