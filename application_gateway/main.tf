resource "azurerm_public_ip" "appgw_pip" {
  name                = "${var.name}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

locals {
  gateway_ip_configuration_name  = "${var.name}-gw-ipc"
  frontend_port_name             = "${var.name}-fe-port"
  frontend_ip_configuration_name = "${var.name}-fe-ipc"
  backend_address_pool_name      = "${var.name}-be-pool"
  backend_http_settings_name     = "${var.name}-be-htst"
  http_listener_name             = "${var.name}-httplstn"
  request_routing_rule_name      = "${var.name}-rqq-rule"
}

resource "azurerm_application_gateway" "appgw" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  gateway_ip_configuration {
    name      = local.gateway_ip_configuration_name
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = local.frontend_port_name
    port = var.frontend_port
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.appgw_pip.id
  }

  backend_address_pool {
    name         = local.backend_address_pool_name
    ip_addresses = length(var.backend_ip_addresses) > 0 ? var.backend_ip_addresses : null
    fqdns        = length(var.backend_fqdns) > 0 ? var.backend_fqdns : null
  }

  backend_http_settings {
    name                  = local.backend_http_settings_name
    cookie_based_affinity = "Disabled"
    port                  = var.backend_port
    protocol              = var.backend_protocol
    request_timeout       = 60
  }

  http_listener {
    name                           = local.http_listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    priority                   = 100
    rule_type                  = "Basic"
    http_listener_name         = local.http_listener_name
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.backend_http_settings_name
  }
}
