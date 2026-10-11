# Resource Group Module

Terraform module to provision an Azure Resource Group.

## Usage

```hcl
module "resource_group" {
  source   = "./resource_group"
  name     = "rg-example"
  location = "eastus"
  tags = {
    Environment = "production"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the resource group. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the resource group. |
| name | The Name of the resource group. |
| location | The Location of the resource group. |
