# Private Endpoint Module

Terraform module to provision an Azure Private Endpoint with optional DNS zone integration.

## Usage

```hcl
module "private_endpoint" {
  source                         = "./private_endpoint"
  name                           = "pe-storage"
  resource_group_name            = "rg-example"
  location                       = "eastus"
  subnet_id                      = module.virtual_network.subnet_ids["subnet_pe"]
  private_connection_resource_id = module.storage_account.id
  subresource_names              = ["blob"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the private endpoint. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| subnet_id | Subnet ID for the private endpoint. | `string` | n/a | yes |
| private_connection_resource_id | Resource ID to connect to. | `string` | n/a | yes |
| subresource_names | List of subresources (e.g. `blob`, `vault`). | `list(string)` | n/a | yes |
| is_manual_connection | Manual approval needed. | `bool` | `false` | no |
| request_message | Manual connection message. | `string` | `null` | no |
| private_dns_zone_ids | List of Private DNS Zone IDs. | `list(string)` | `null` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Private Endpoint. |
| name | The name of the Private Endpoint. |
| private_ip_address | The allocated private IP address. |
