# Application Gateway Module

Terraform module to provision an Azure Application Gateway v2 with frontend IP and basic routing.

## Usage

```hcl
module "application_gateway" {
  source              = "./application_gateway"
  name                = "appgw-portal"
  resource_group_name = "rg-example"
  location            = "eastus"
  subnet_id           = module.virtual_network.subnet_ids["subnet_appgw"]
  backend_ip_addresses = ["10.0.1.10"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Application Gateway name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| subnet_id | Dedicated subnet ID. | `string` | n/a | yes |
| sku_name | SKU name (`Standard_v2`, `WAF_v2`). | `string` | `"Standard_v2"` | no |
| sku_tier | SKU tier (`Standard_v2`, `WAF_v2`). | `string` | `"Standard_v2"` | no |
| capacity | Gateway capacity/instance count. | `number` | `2` | no |
| frontend_port | Listener port. | `number` | `80` | no |
| backend_port | Target backend port. | `number` | `80` | no |
| backend_protocol | Protocol (`Http` / `Https`). | `string` | `"Http"` | no |
| backend_ip_addresses | List of backend IP addresses. | `list(string)` | `[]` | no |
| backend_fqdns | List of backend FQDNs. | `list(string)` | `[]` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Application Gateway. |
| name | The name of the Application Gateway. |
| public_ip_address | Public IP address of the gateway. |
