# Azure MySQL Flexible Server Module

Terraform module to provision an Azure Database for MySQL Flexible Server and database.

## Usage

```hcl
module "mysql_database" {
  source              = "./mysql_database"
  server_name         = "mysql-srv-prod"
  database_name       = "appdb"
  resource_group_name = "rg-example"
  location            = "eastus"
  admin_password      = "ComplexPassword123!"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| server_name | MySQL Server name. | `string` | n/a | yes |
| database_name | Database name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| admin_username | Administrator username. | `string` | `"mysqladmin"` | no |
| admin_password | Administrator password. | `string` | n/a | yes |
| sku_name | Server SKU (e.g. `B_Standard_B1ms`). | `string` | `"B_Standard_B1ms"` | no |
| mysql_version | MySQL version. | `string` | `"8.0.21"` | no |
| storage_size_gb | Storage size in GB. | `number` | `20` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| server_id | MySQL Server resource ID. |
| database_id | MySQL Database resource ID. |
| fqdn | Fully qualified domain name. |
