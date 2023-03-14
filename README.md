# Heztner Cloud Server Terraform module

Terraform module which creates a server on Hetzner Cloud.

## Usage

### Single Server

```hcl
module "hcloud_server" {
  source  = "github.com/flokoe/terraform-hcloud-server-module"
  version = "0.1.0"

  name = "single-server"

  image       = "debian-11"
  server_type = "cx11"
}
```

### Multiple Servers

```hcl
module "hcloud_server" {
  source  = "github.com/flokoe/terraform-hcloud-server-module"
  version = "0.1.0"

  for_each = toset(["one", "two", "three"])

  name = "server-${each.key}"

  image       = "debian-11"
  server_type = "cx11"
}
```

<!-- ## Examples -->

<!-- ## Notes -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.36.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.36.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_server.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |
| [hcloud_server_network.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_ips"></a> [alias\_ips](#input\_alias\_ips) | Additional IPs to be assigned to this server. | `list(string)` | `[]` | no |
| <a name="input_attach_private_network"></a> [attach\_private\_network](#input\_attach\_private\_network) | If true, attach server to an existing private network. | `bool` | `false` | no |
| <a name="input_backups"></a> [backups](#input\_backups) | Enable or disable backups. | `bool` | `false` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection. | `bool` | `false` | no |
| <a name="input_firewall_ids"></a> [firewall\_ids](#input\_firewall\_ids) | Firewall IDs the server should be attached to on creation. | `list(string)` | `[]` | no |
| <a name="input_image"></a> [image](#input\_image) | Name or ID of the image the server is created from. | `string` | `"debian-11"` | no |
| <a name="input_ip"></a> [ip](#input\_ip) | IP to request to be assigned to this server. | `string` | `null` | no |
| <a name="input_keep_disk"></a> [keep\_disk](#input\_keep\_disk) | If true, do not upgrade the disk. This allows downgrading the server type later. | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with. | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location name to create the server in. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the server to create (must be unique per project and a valid hostname as per RFC 1123). | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | ID of the network which should be added to the server. | `number` | `null` | no |
| <a name="input_placement_group_id"></a> [placement\_group\_id](#input\_placement\_group\_id) | Placement Group ID the server added to on creation. | `string` | `null` | no |
| <a name="input_primary_ipv4_id"></a> [primary\_ipv4\_id](#input\_primary\_ipv4\_id) | ID of existing or external IPv4 address. | `string` | `null` | no |
| <a name="input_primary_ipv6_id"></a> [primary\_ipv6\_id](#input\_primary\_ipv6\_id) | ID of existing or external IPv6 address. | `string` | `null` | no |
| <a name="input_public_ipv4_enabled"></a> [public\_ipv4\_enabled](#input\_public\_ipv4\_enabled) | Enable or disable public IPv4 address. | `bool` | `true` | no |
| <a name="input_public_ipv6_enabled"></a> [public\_ipv6\_enabled](#input\_public\_ipv6\_enabled) | Enable or disable public IPv6 address. | `bool` | `true` | no |
| <a name="input_rebuild_protection"></a> [rebuild\_protection](#input\_rebuild\_protection) | Enable or disable rebuild protection. | `bool` | `false` | no |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | Name of the server type this server should be created with. | `string` | `"cx11"` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH key IDs or names which should be injected into the server at creation time. | `list(string)` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the sub-network which should be added to the server. | `string` | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Cloud-Init user data to use during server creation. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

MIT Licensed. See [LICENSE](https://github.com/flokoe/terraform-hcloud-server-module/blob/main/LICENSE) for full details.
