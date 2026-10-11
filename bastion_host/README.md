# Azure Bastion Host Module

Terraform module to provision an Azure Bastion Host with dedicated Standard Public IP.

## Usage

```hcl
module "bastion_host" {
  source              = "./bastion_host"
  name                = "bas-hub"
  resource_group_name = "rg-example"
  location            = "eastus"
  subnet_id           = module.virtual_network.subnet_ids["AzureBastionSubnet"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the Bastion host. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| sku | Bastion SKU (`Basic`, `Standard`, etc.). | `string` | `"Standard"` | no |
| subnet_id | Subnet ID (must be `AzureBastionSubnet`). | `string` | n/a | yes |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Bastion Host. |
| name | The name of the Bastion Host. |
| dns_name | Bastion Host FQDN. |
| public_ip_address | Public IP address. |
