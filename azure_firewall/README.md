# Azure Firewall Module

Terraform module to provision an Azure Firewall with dedicated Standard Public IP.

## Usage

```hcl
module "azure_firewall" {
  source              = "./azure_firewall"
  name                = "afw-hub"
  resource_group_name = "rg-example"
  location            = "eastus"
  subnet_id           = module.virtual_network.subnet_ids["AzureFirewallSubnet"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the Azure Firewall. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| sku_tier | SKU tier (`Standard`, `Premium`, `Basic`). | `string` | `"Standard"` | no |
| subnet_id | Subnet ID (must be `AzureFirewallSubnet`). | `string` | n/a | yes |
| firewall_policy_id | Optional Firewall Policy ID. | `string` | `null` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Azure Firewall. |
| name | The name of the Azure Firewall. |
| public_ip_address | The Public IP address of the Firewall. |
| private_ip_address | The private IP address of the Firewall. |
