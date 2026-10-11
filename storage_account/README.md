# Storage Account Module

Terraform module to provision an Azure Storage Account with optional blob containers.

## Usage

```hcl
module "storage_account" {
  source              = "./storage_account"
  name                = "stappprod001"
  resource_group_name = "rg-example"
  location            = "eastus"
  containers          = ["uploads", "logs"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Storage account name (lowercase alphanumeric). | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| account_tier | Account tier (`Standard`, `Premium`). | `string` | `"Standard"` | no |
| account_replication_type | Replication (`LRS`, `GRS`, `ZRS`). | `string` | `"LRS"` | no |
| containers | List of container names to provision. | `list(string)` | `[]` | no |
| container_access_type | Container access level (`private`, etc.). | `string` | `"private"` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Storage Account. |
| name | The name of the Storage Account. |
| primary_blob_endpoint | Endpoint URL for blob storage. |
| primary_access_key | Primary access key (sensitive). |
