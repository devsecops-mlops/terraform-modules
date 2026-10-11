# Azure Data Factory Module

Terraform module to provision an Azure Data Factory (v2) with SystemAssigned identity.

## Usage

```hcl
module "data_factory" {
  source              = "./data_factory"
  name                = "adf-analytics-pipeline"
  resource_group_name = "rg-example"
  location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Data Factory name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Data Factory resource ID. |
| name | Data Factory name. |
| identity_principal_id | SystemAssigned Principal ID. |
