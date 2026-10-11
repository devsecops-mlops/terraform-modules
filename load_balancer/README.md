# Azure Load Balancer Module

Terraform module to provision an Azure Standard Load Balancer (Public or Internal) with backend pool and health probe.

## Usage

```hcl
module "load_balancer" {
  source              = "./load_balancer"
  name                = "lb-app"
  resource_group_name = "rg-example"
  location            = "eastus"
  type                = "Public"
  probe_port          = 80
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Load balancer name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| type | `Public` or `Internal`. | `string` | `"Public"` | no |
| subnet_id | Subnet ID for Internal Load Balancers. | `string` | `null` | no |
| private_ip_address | Static private IP address. | `string` | `null` | no |
| probe_port | Port for health probe. | `number` | `80` | no |
| probe_protocol | Protocol for probe (`Http`, `Https`, `Tcp`). | `string` | `"Http"` | no |
| probe_path | HTTP/HTTPS path for probe. | `string` | `"/"` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Load Balancer. |
| name | The name of the Load Balancer. |
| backend_address_pool_id | Backend pool ID. |
| frontend_ip_configuration | Frontend IP configurations block. |
