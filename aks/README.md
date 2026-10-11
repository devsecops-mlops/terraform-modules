# Azure Kubernetes Service (AKS) Module

Terraform module to provision an Azure Kubernetes Service (AKS) cluster with SystemAssigned identity.

## Usage

```hcl
module "aks" {
  source              = "./aks"
  name                = "aks-prod-cluster"
  resource_group_name = "rg-example"
  location            = "eastus"
  node_count          = 3
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | AKS cluster name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| dns_prefix | DNS prefix (defaults to cluster name). | `string` | `null` | no |
| node_count | Initial node count. | `number` | `2` | no |
| vm_size | Virtual machine size. | `string` | `"Standard_D2s_v3"` | no |
| vnet_subnet_id | Dedicated subnet ID. | `string` | `null` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Cluster ID. |
| name | Cluster name. |
| kube_config_raw | Kubeconfig raw YAML (sensitive). |
| oidc_issuer_url | OIDC issuer URL. |
| identity_principal_id | SystemAssigned Principal ID. |
