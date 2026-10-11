project_name = "devops"
environment  = "prod"
location     = "eastus"

vnet_address_space = ["10.20.0.0/16"]

subnets = {
  app = { address_prefixes = ["10.20.1.0/24"] }
  db  = { address_prefixes = ["10.20.2.0/24"] }
  pe  = { address_prefixes = ["10.20.3.0/24"] }
}

security_rules = [
  {
    name                   = "AllowHTTPS"
    priority               = 100
    direction              = "Inbound"
    access                 = "Allow"
    protocol               = "Tcp"
    destination_port_range = "443"
  }
]

log_retention_days       = 90
storage_replication_type = "GRS"

tags = {
  CostCenter  = "Engineering-Prod"
  Compliance  = "SOC2-HIPAA"
  Criticality = "Mission-Critical"
}
