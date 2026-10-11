# Log Analytics Workspace Module

Terraform module to provision an Azure Log Analytics Workspace for monitoring and diagnostics.

## Usage

```hcl
module "log_analytics" {
  source              = "./log_analytics"
  name                = "law-shared-prod"
  resource_group_name = "rg-example"
  location            = "eastus"
  retention_in_days   = 30
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Log Analytics Workspace name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| sku | SKU (`PerGB2018`, etc.). | `string` | `"PerGB2018"` | no |
| retention_in_days | Log retention days. | `number` | `30` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Log Analytics Workspace. |
| name | The name of the Log Analytics Workspace. |
| workspace_id | Customer Workspace ID. |
| primary_shared_key | Primary shared key (sensitive). |
