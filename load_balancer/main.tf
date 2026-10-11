resource "azurerm_public_ip" "lb_pip" {
  count               = var.type == "Public" ? 1 : 0
  name                = "${var.name}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

resource "azurerm_lb" "lb" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  tags                = var.tags

  frontend_ip_configuration {
    name                          = "FrontendConfig"
    public_ip_address_id          = var.type == "Public" ? azurerm_public_ip.lb_pip[0].id : null
    subnet_id                     = var.type == "Internal" ? var.subnet_id : null
    private_ip_address            = var.type == "Internal" ? var.private_ip_address : null
    private_ip_address_allocation = var.type == "Internal" ? (var.private_ip_address != null ? "Static" : "Dynamic") : null
  }
}

resource "azurerm_lb_backend_address_pool" "backend_pool" {
  name            = "${var.name}-backend-pool"
  loadbalancer_id = azurerm_lb.lb.id
}

resource "azurerm_lb_probe" "health_probe" {
  name            = "${var.name}-probe"
  loadbalancer_id = azurerm_lb.lb.id
  port            = var.probe_port
  protocol        = var.probe_protocol
  request_path    = var.probe_protocol == "Http" || var.probe_protocol == "Https" ? var.probe_path : null
}
