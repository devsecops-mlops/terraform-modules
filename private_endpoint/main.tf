resource "azurerm_private_endpoint" "pe" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  tags                = var.tags

  private_service_connection {
    name                           = "${var.name}-psc"
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = var.subresource_names
    is_manual_connection           = var.is_manual_connection
    request_message                = var.is_manual_connection ? var.request_message : null
  }

  dynamic "private_dns_zone_group" {
    for_each = var.private_dns_zone_ids != null && length(var.private_dns_zone_ids) > 0 ? [1] : []
    content {
      name                 = "${var.name}-dns-group"
      private_dns_zone_ids = var.private_dns_zone_ids
    }
  }
}
