# Windows Virtual Machine Module

Terraform module to provision an Azure Windows Virtual Machine and associated Network Interface.

## Usage

```hcl
module "windows_vm" {
  source              = "./windows_vm"
  name                = "vm-win-01"
  resource_group_name = "rg-example"
  location            = "eastus"
  subnet_id           = module.virtual_network.subnet_ids["subnet_vms"]
  admin_password      = "P@ssw0rd1234!"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Virtual machine name. | `string` | n/a | yes |
| resource_group_name | The resource group name. | `string` | n/a | yes |
| location | The Azure region. | `string` | n/a | yes |
| subnet_id | Subnet ID for the VM network interface. | `string` | n/a | yes |
| size | VM size / SKU. | `string` | `"Standard_D2s_v3"` | no |
| admin_username | Local administrator username. | `string` | `"azureadmin"` | no |
| admin_password | Local administrator password. | `string` | n/a | yes |
| os_disk_type | OS disk storage tier (`Standard_LRS`, `Premium_LRS`). | `string` | `"Standard_LRS"` | no |
| image_publisher | Image publisher. | `string` | `"MicrosoftWindowsServer"` | no |
| image_offer | Image offer. | `string` | `"WindowsServer"` | no |
| image_sku | Image SKU. | `string` | `"2022-Datacenter"` | no |
| image_version | Image version. | `string` | `"latest"` | no |
| tags | Tags to assign. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the VM. |
| name | The name of the VM. |
| private_ip_address | Primary private IP address. |
| nic_id | Associated NIC ID. |
