locals {
  tags = merge(
    var.tags,
    {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Terraform"
    }
  )
}

module "resource_group" {
  source   = "../../resource_group"
  name     = "${var.project_name}-rg-${var.environment}"
  location = var.location
  tags     = local.tags
}

module "log_analytics" {
  source              = "../../log_analytics"
  name                = "${var.project_name}-law-${var.environment}"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  retention_in_days   = var.log_retention_days
  tags                = local.tags
}

module "virtual_network" {
  source              = "../../virtual_network"
  name                = "${var.project_name}-vnet-${var.environment}"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = local.tags
}

module "network_security_group" {
  source              = "../../network_security_group"
  name                = "${var.project_name}-nsg-${var.environment}"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  security_rules      = var.security_rules
  tags                = local.tags
}

module "key_vault" {
  source                     = "../../key_vault"
  name                       = "${var.project_name}-kv-${var.environment}-01"
  resource_group_name        = module.resource_group.name
  location                   = module.resource_group.location
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  purge_protection_enabled   = false
  enable_rbac_authorization  = true
  tags                       = local.tags
}

module "storage_account" {
  source                   = "../../storage_account"
  name                     = lower(replace("${var.project_name}sa${var.environment}01", "-", ""))
  resource_group_name      = module.resource_group.name
  location                 = module.resource_group.location
  account_tier             = "Standard"
  account_replication_type = var.storage_replication_type
  containers               = ["data", "diagnostics"]
  tags                     = local.tags
}
