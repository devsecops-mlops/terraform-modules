# Azure Event Grid Topic Module

Terraform module to provision an Azure Event Grid Topic.

## Usage

```hcl
module "event_grid" {
  source              = "./event_grid"
  name                = "evgt-telemetry"
  resource_group_name = "rg-example"
  location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Event Grid Topic name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| input_schema | Input schema (`EventGridSchema`, `CloudEventSchemaV1_0`). | `string` | `"EventGridSchema"` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The EventGrid Topic ID. |
| name | The EventGrid Topic name. |
| endpoint | The topic ingestion endpoint URL. |
| primary_access_key | Shared access key (sensitive). |
