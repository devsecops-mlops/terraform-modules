# NAT Gateway Module

Terraform module to provision an Azure NAT Gateway with an optional static Standard Public IP.

## Usage

```hcl
module "nat_gateway" {
  source              = "./nat_gateway"
  name                = "natgw-app"
  resource_group_name = "rg-example"
  location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the NAT Gateway. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| create_public_ip | Whether to create and attach a Public IP. | `bool` | `true` | no |
| idle_timeout_in_minutes | Idle timeout in minutes. | `number` | `4` | no |
| zones | Availability zones. | `list(string)` | `null` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the NAT Gateway. |
| name | The name of the NAT Gateway. |
| public_ip_id | The Public IP resource ID. |
| public_ip_address | The allocated Public IP address. |
