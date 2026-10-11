# Azure Key Vault Module

Terraform module to provision an Azure Key Vault with Azure RBAC authorization.

## Usage

```hcl
module "key_vault" {
  source              = "./key_vault"
  name                = "kv-app-prod-01"
  resource_group_name = "rg-example"
  location            = "eastus"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Key Vault name (globally unique). | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| tenant_id | Azure tenant ID. | `string` | `null` | no |
| sku_name | SKU (`standard` or `premium`). | `string` | `"standard"` | no |
| soft_delete_retention_days | Retention days for soft-deleted items. | `number` | `7` | no |
| purge_protection_enabled | Purge protection flag. | `bool` | `false` | no |
| enable_rbac_authorization | RBAC authorization flag. | `bool` | `true` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Key Vault. |
| name | The name of the Key Vault. |
| vault_uri | The URI of the Key Vault. |
