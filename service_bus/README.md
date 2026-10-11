# Azure Service Bus Module

Terraform module to provision an Azure Service Bus Namespace with queues.

## Usage

```hcl
module "service_bus" {
  source              = "./service_bus"
  name                = "sb-messaging-prod"
  resource_group_name = "rg-example"
  location            = "eastus"
  queues              = ["orders", "notifications"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Service Bus namespace name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| sku | SKU tier (`Basic`, `Standard`, `Premium`). | `string` | `"Standard"` | no |
| queues | List of queues to provision. | `list(string)` | `[]` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Service Bus Namespace ID. |
| name | Service Bus Namespace name. |
| default_primary_connection_string | Primary connection string (sensitive). |
| queue_ids | Map of queue names to resource IDs. |
