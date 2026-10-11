# Azure App Service (Web App) Module

Terraform module to provision an Azure App Service Plan and Linux Web App.

## Usage

```hcl
module "app_service" {
  source              = "./app_service"
  name                = "app-web-portal"
  resource_group_name = "rg-example"
  location            = "eastus"
  sku_name            = "B1"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Web App name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| os_type | OS type (`Linux` / `Windows`). | `string` | `"Linux"` | no |
| sku_name | App Service Plan SKU (e.g. `B1`, `P1v3`). | `string` | `"B1"` | no |
| app_settings | Key-value map of app settings. | `map(string)` | `{}` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Web App ID. |
| name | Web App name. |
| default_hostname | Default hostname. |
| service_plan_id | App Service Plan ID. |
