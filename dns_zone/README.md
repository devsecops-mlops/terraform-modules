# DNS Zone Module

Terraform module to provision an Azure Public DNS Zone.

## Usage

```hcl
module "dns_zone" {
  source              = "./dns_zone"
  name                = "example.com"
  resource_group_name = "rg-example"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The DNS Zone domain name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the DNS zone. |
| name | The name of the DNS zone. |
| name_servers | List of name servers. |
| max_number_of_record_sets | Maximum record sets permitted. |
