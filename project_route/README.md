# Project Route (Route Table) Module

Terraform module to provision an Azure Route Table with user-defined routes.

## Usage

```hcl
module "route_table" {
  source              = "./project_route"
  name                = "rt-default"
  resource_group_name = "rg-example"
  location            = "eastus"

  routes = [
    {
      name                   = "to-firewall"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.0.0.4"
    }
  ]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the route table. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| disable_bgp_route_propagation | Disable BGP route propagation. | `bool` | `false` | no |
| routes | List of route definitions. | `list(object)` | `[]` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the route table. |
| name | The name of the route table. |
| subnets | Subnets attached to the route table. |
