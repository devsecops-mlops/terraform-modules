project_name = "devops"
environment  = "dev"
location     = "eastus"

vnet_address_space = ["10.10.0.0/16"]

subnets = {
  app = { address_prefixes = ["10.10.1.0/24"] }
  db  = { address_prefixes = ["10.10.2.0/24"] }
  pe  = { address_prefixes = ["10.10.3.0/24"] }
}

security_rules = [
  {
    name                   = "AllowHTTP"
    priority               = 100
    direction              = "Inbound"
    access                 = "Allow"
    protocol               = "Tcp"
    destination_port_range = "80"
  },
  {
    name                   = "AllowHTTPS"
    priority               = 110
    direction              = "Inbound"
    access                 = "Allow"
    protocol               = "Tcp"
    destination_port_range = "443"
  }
]

log_retention_days       = 30
storage_replication_type = "LRS"

tags = {
  CostCenter = "Engineering-Dev"
}
