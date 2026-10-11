# Azure Container App Module

Terraform module to provision an Azure Container App and Managed Container App Environment.

## Usage

```hcl
module "container_app" {
  source              = "./container_app"
  name                = "ca-microservice"
  resource_group_name = "rg-example"
  location            = "eastus"
  image               = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Container App name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| log_analytics_workspace_id | Log Analytics Workspace ID. | `string` | `null` | no |
| image | Container image URL. | `string` | `"mcr.microsoft.com/azuredocs/aci-helloworld:latest"` | no |
| cpu | Allocated CPU (e.g. 0.25). | `number` | `0.25` | no |
| memory | Allocated memory (e.g. 0.5Gi). | `string` | `"0.5Gi"` | no |
| target_port | Container target port. | `number` | `80` | no |
| external_enabled | Enable public internet ingress. | `bool` | `true` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Container App. |
| name | The name of the Container App. |
| environment_id | The ID of the Container App Environment. |
| fqdn | Ingress FQDN of the app. |
