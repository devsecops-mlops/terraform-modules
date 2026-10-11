# Azure Synapse Analytics Module

Terraform module to provision an Azure Synapse Analytics Workspace with SystemAssigned identity.

## Usage

```hcl
module "synapse_analytics" {
  source                               = "./synapse_analytics"
  name                                 = "synapse-analytics-workspace"
  resource_group_name                  = "rg-example"
  location                             = "eastus"
  storage_data_lake_gen2_filesystem_id = "https://stexample.dfs.core.windows.net/users"
  sql_administrator_login_password     = "ComplexPassword123!"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Synapse Workspace name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| storage_data_lake_gen2_filesystem_id | ADLS Gen2 filesystem ID. | `string` | n/a | yes |
| sql_administrator_login | SQL administrator login. | `string` | `"sqladmin"` | no |
| sql_administrator_login_password | SQL administrator password. | `string` | n/a | yes |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Synapse Workspace ID. |
| name | Synapse Workspace name. |
| connectivity_endpoints | Map of endpoint connection URLs. |
| identity_principal_id | SystemAssigned Principal ID. |
