# Azure Front Door Module

Terraform module to provision an Azure Front Door (Standard/Premium) profile and endpoint.

## Usage

```hcl
module "front_door" {
  source              = "./front_door"
  name                = "afd-global-app"
  resource_group_name = "rg-example"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Front Door profile name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| sku_name | SKU (`Standard_AzureFrontDoor` / `Premium_AzureFrontDoor`). | `string` | `"Standard_AzureFrontDoor"` | no |
| endpoint_name | Name of the endpoint. | `string` | `null` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Front Door profile. |
| name | The name of the Front Door profile. |
| endpoint_id | The ID of the endpoint. |
| host_name | The FQDN/hostname of the endpoint. |
