# Virtual Network Module

Terraform module to provision an Azure Virtual Network and Subnets.

## Usage

```hcl
module "virtual_network" {
  source              = "./virtual_network"
  name                = "vnet-app"
  resource_group_name = "rg-example"
  location            = "eastus"
  address_space       = ["10.0.0.0/16"]

  subnets = {
    subnet_web = { address_prefixes = ["10.0.1.0/24"] }
    subnet_db  = { address_prefixes = ["10.0.2.0/24"] }
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the virtual network. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| address_space | Address space list for the virtual network. | `list(string)` | n/a | yes |
| subnets | Subnets to create inside the virtual network. | `map(object)` | `{}` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the virtual network. |
| name | The name of the virtual network. |
| address_space | The address spaces of the virtual network. |
| subnet_ids | Map of subnet names to subnet IDs. |
