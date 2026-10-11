# Azure PostgreSQL Flexible Server Module

Terraform module to provision an Azure Database for PostgreSQL Flexible Server and database.

## Usage

```hcl
module "postgresql_flexible" {
  source              = "./postgresql_flexible"
  server_name         = "psql-srv-prod"
  database_name       = "appdb"
  resource_group_name = "rg-example"
  location            = "eastus"
  admin_password      = "ComplexPassword123!"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| server_name | PostgreSQL Server name. | `string` | n/a | yes |
| database_name | Database name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| admin_username | Administrator username. | `string` | `"psqladmin"` | no |
| admin_password | Administrator password. | `string` | n/a | yes |
| sku_name | Server SKU (e.g. `B_Standard_B1ms`). | `string` | `"B_Standard_B1ms"` | no |
| postgres_version | PostgreSQL version (`13`, `14`, `15`, `16`). | `string` | `"15"` | no |
| storage_mb | Storage capacity in MB. | `number` | `32768` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| server_id | PostgreSQL Server resource ID. |
| database_id | PostgreSQL Database resource ID. |
| fqdn | Fully qualified domain name. |
