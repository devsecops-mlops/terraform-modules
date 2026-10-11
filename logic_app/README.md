# Azure Logic App Workflow Module

Terraform module to provision an Azure Logic App Workflow.

## Usage

```hcl
module "logic_app" {
  source              = "./logic_app"
  name                = "logic-order-processor"
  resource_group_name = "rg-example"
  location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Logic App Workflow name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| workflow_parameters | Key-value parameter map. | `map(string)` | `{}` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The Logic App Workflow ID. |
| name | The Logic App Workflow name. |
| access_endpoint | The Access Endpoint. |
