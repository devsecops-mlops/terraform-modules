# Azure Terraform Modules Catalog

This repository contains 30 modular, reusable Terraform modules for provisioning infrastructure across Microsoft Azure using the `azurerm` provider.

All modules follow a flat directory structure, provide typed inputs with default values, export consistent outputs (`id`, `name`, connection attributes), and include their own `README.md` with usage examples.

---

## 📦 Modules Directory

### 1. Foundation & Governance
| Module | Directory | Description |
|--------|-----------|-------------|
| Resource Group | [`./resource_group`](./resource_group/) | Provisions Azure Resource Groups with customizable tagging. |

### 2. Networking & Routing
| Module | Directory | Description |
|--------|-----------|-------------|
| Virtual Network | [`./virtual_network`](./virtual_network/) | Creates an Azure Virtual Network and subnets with custom address spaces. |
| Network Security Group | [`./network_security_group`](./network_security_group/) | Sets up NSGs with dynamic, configurable security rules. |
| Project Route | [`./project_route`](./project_route/) | Deploys Azure Route Tables and user-defined routes (UDRs). |
| NAT Gateway | [`./nat_gateway`](./nat_gateway/) | Provisions an Azure NAT Gateway with associated Standard Public IP. |
| Private Endpoint | [`./private_endpoint`](./private_endpoint/) | Deploys Azure Private Endpoints with optional Private DNS zone integration. |
| Azure Firewall | [`./azure_firewall`](./azure_firewall/) | Provisions Azure Firewall (Basic/Standard/Premium) with dedicated Public IP. |
| Bastion Host | [`./bastion_host`](./bastion_host/) | Deploys Azure Bastion Host for secure RDP/SSH access. |
| DNS Zone | [`./dns_zone`](./dns_zone/) | Manages Azure Public DNS zones. |

### 3. Load Balancing & Edge Delivery
| Module | Directory | Description |
|--------|-----------|-------------|
| Load Balancer | [`./load_balancer`](./load_balancer/) | Configures Public or Internal Standard Azure Load Balancer with probes and backend pools. |
| Application Gateway | [`./application_gateway`](./application_gateway/) | Provisions Azure Application Gateway v2 with HTTP listener and basic routing. |
| Front Door | [`./front_door`](./front_door/) | Sets up Azure Front Door (Standard/Premium) CDN profile and endpoint. |

### 4. Security & Observability
| Module | Directory | Description |
|--------|-----------|-------------|
| Key Vault | [`./key_vault`](./key_vault/) | Provisions Azure Key Vault with RBAC authorization and soft-delete retention. |
| Log Analytics | [`./log_analytics`](./log_analytics/) | Deploys Log Analytics Workspaces for diagnostic logging and telemetry. |

### 5. Storage & Databases
| Module | Directory | Description |
|--------|-----------|-------------|
| Storage Account | [`./storage_account`](./storage_account/) | Provisions Azure Storage Accounts (Blob/Table/Queue) with container creation. |
| Azure SQL Database | [`./azure_sql_db`](./azure_sql_db/) | Deploys Azure SQL Logical Server and SQL Database. |
| MySQL Flexible Server | [`./mysql_database`](./mysql_database/) | Provisions Azure Database for MySQL Flexible Server and schema database. |
| PostgreSQL Flexible | [`./postgresql_flexible`](./postgresql_flexible/) | Deploys Azure Database for PostgreSQL Flexible Server and schema database. |
| Redis Cache | [`./redis_cache`](./redis_cache/) | Deploys Azure Cache for Redis (Basic/Standard/Premium). |

### 6. Compute & Containers
| Module | Directory | Description |
|--------|-----------|-------------|
| Windows VM | [`./windows_vm`](./windows_vm/) | Deploys Azure Windows Virtual Machine and Network Interface. |
| Azure Kubernetes (AKS) | [`./aks`](./aks/) | Manages Azure Managed Kubernetes Cluster (AKS) with system identity. |
| Container App | [`./container_app`](./container_app/) | Sets up Container App Environment and Container App with ingress. |
| App Service | [`./app_service`](./app_service/) | Creates an App Service Plan and Linux Web App. |
| Function App | [`./function_app`](./function_app/) | Deploys Linux Function App (Serverless Consumption) with storage backing. |

### 7. Messaging, Integration & Analytics
| Module | Directory | Description |
|--------|-----------|-------------|
| Logic App | [`./logic_app`](./logic_app/) | Provisions Azure Logic App Workflows. |
| API Management | [`./api_management`](./api_management/) | Provisions Azure API Management (APIM) gateway. |
| Event Grid | [`./event_grid`](./event_grid/) | Configures Azure Event Grid Topics. |
| Service Bus | [`./service_bus`](./service_bus/) | Provisions Service Bus Namespace and messaging queues. |
| Synapse Analytics | [`./synapse_analytics`](./synapse_analytics/) | Deploys Azure Synapse Workspace with ADLS Gen2 backing. |
| Data Factory | [`./data_factory`](./data_factory/) | Deploys Azure Data Factory v2 with managed system identity. |

---

## 🚀 Quick Example: Composing Foundational Infrastructure

Here is how foundational modules connect together in a single stack:

```hcl
terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# 1. Resource Group
module "rg" {
  source   = "./resource_group"
  name     = "rg-enterprise-prod"
  location = "eastus"
  tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

# 2. Virtual Network & Subnets
module "vnet" {
  source              = "./virtual_network"
  name                = "vnet-prod-eastus"
  resource_group_name = module.rg.name
  location            = module.rg.location
  address_space       = ["10.0.0.0/16"]

  subnets = {
    web   = { address_prefixes = ["10.0.1.0/24"] }
    app   = { address_prefixes = ["10.0.2.0/24"] }
    pe    = { address_prefixes = ["10.0.3.0/24"] }
  }
}

# 3. Network Security Group
module "nsg_web" {
  source              = "./network_security_group"
  name                = "nsg-web-tier"
  resource_group_name = module.rg.name
  location            = module.rg.location

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
}

# 4. Storage Account
module "storage" {
  source              = "./storage_account"
  name                = "stenterpriseprod001"
  resource_group_name = module.rg.name
  location            = module.rg.location
  containers          = ["assets", "reports"]
}

# 5. Private Endpoint for Storage Account
module "pe_storage" {
  source                         = "./private_endpoint"
  name                           = "pe-st-blob"
  resource_group_name            = module.rg.name
  location                       = module.rg.location
  subnet_id                      = module.vnet.subnet_ids["pe"]
  private_connection_resource_id = module.storage.id
  subresource_names              = ["blob"]
}
```
