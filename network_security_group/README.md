# Network Security Group Module

Terraform module to provision an Azure Network Security Group with customizable rules.

## Usage

```hcl
module "nsg" {
  source              = "./network_security_group"
  name                = "nsg-web"
  resource_group_name = "rg-example"
  location            = "eastus"

  security_rules = [
    {
      name                   = "AllowHTTP"
      priority               = 100
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "80"
    }
  ]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the NSG. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| security_rules | List of security rules. | `list(object)` | `[]` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the network security group. |
| name | The name of the network security group. |
