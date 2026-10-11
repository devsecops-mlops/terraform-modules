# Azure API Management Module

Terraform module to provision an Azure API Management (APIM) instance.

## Usage

```hcl
module "api_management" {
  source              = "./api_management"
  name                = "apim-corp-portal"
  resource_group_name = "rg-example"
  location            = "eastus"
  publisher_name      = "Corporate IT"
  publisher_email     = "it@example.com"
  sku_name            = "Developer_1"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | API Management service name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| publisher_name | Organization / publisher name. | `string` | n/a | yes |
| publisher_email | Publisher admin email. | `string` | n/a | yes |
| sku_name | SKU and capacity (e.g. `Developer_1`). | `string` | `"Developer_1"` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | APIM instance ID. |
| name | APIM instance name. |
| gateway_url | Gateway endpoint URL. |
| management_api_url | Management API URL. |
