# Azure SQL Database Module

Terraform module to provision an Azure SQL Logical Server and Azure SQL Database.

## Usage

```hcl
module "azure_sql_db" {
  source              = "./azure_sql_db"
  server_name         = "sql-server-prod"
  database_name       = "sqldb-app"
  resource_group_name = "rg-example"
  location            = "eastus"
  admin_password      = "StrongPassw0rd!"
  sku_name            = "S0"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| server_name | Logical SQL Server name. | `string` | n/a | yes |
| database_name | SQL Database name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| admin_username | Administrator login username. | `string` | `"sqladmin"` | no |
| admin_password | Administrator login password. | `string` | n/a | yes |
| sku_name | Database SKU (e.g. `S0`, `GP_Gen5_2`). | `string` | `"S0"` | no |
| max_size_gb | Database maximum size in GB. | `number` | `5` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| server_id | The SQL Server resource ID. |
| database_id | The SQL Database resource ID. |
| server_fqdn | Fully qualified domain name of the SQL Server. |
