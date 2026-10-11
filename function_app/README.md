# Azure Function App Module

Terraform module to provision an Azure Linux Function App and its Service Plan.

## Usage

```hcl
module "function_app" {
  source                     = "./function_app"
  name                       = "func-process-orders"
  resource_group_name        = "rg-example"
  location                   = "eastus"
  storage_account_name       = module.storage_account.name
  storage_account_access_key = module.storage_account.primary_access_key
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Function App name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| storage_account_name | Backend storage account name. | `string` | n/a | yes |
| storage_account_access_key | Backend storage access key. | `string` | n/a | yes |
| sku_name | Service Plan SKU (`Y1` for consumption). | `string` | `"Y1"` | no |
| app_settings | Key-value settings map. | `map(string)` | `{}` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Function App ID. |
| name | Function App name. |
| default_hostname | Default hostname. |
| service_plan_id | Service Plan ID. |
