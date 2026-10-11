resource "azurerm_public_ip" "pip" {
  count               = var.create_public_ip ? 1 : 0
  name                = "${var.name}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  zones               = var.zones
  tags                = var.tags
}

resource "azurerm_nat_gateway" "nat_gw" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  sku_name                = "Standard"
  zones                   = var.zones
  tags                    = var.tags
}

resource "azurerm_nat_gateway_public_ip_association" "pip_assoc" {
  count                = var.create_public_ip ? 1 : 0
  nat_gateway_id       = azurerm_nat_gateway.nat_gw.id
  public_ip_address_id = azurerm_public_ip.pip[0].id
}
