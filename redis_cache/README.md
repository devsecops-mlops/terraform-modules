# Azure Redis Cache Module

Terraform module to provision an Azure Cache for Redis instance.

## Usage

```hcl
module "redis_cache" {
  source              = "./redis_cache"
  name                = "redis-app-cache"
  resource_group_name = "rg-example"
  location            = "eastus"
  sku_name            = "Standard"
  capacity            = 1
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Redis Cache name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| capacity | Redis cache capacity (0 to 6). | `number` | `1` | no |
| family | SKU family (`C` or `P`). | `string` | `"C"` | no |
| sku_name | SKU name (`Basic`, `Standard`, `Premium`). | `string` | `"Basic"` | no |
| enable_non_ssl_port | Enable non-SSL port. | `bool` | `false` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Redis Cache resource ID. |
| name | Redis Cache name. |
| hostname | Redis hostname. |
| ssl_port | Redis SSL port. |
| primary_access_key | Primary access key (sensitive). |
