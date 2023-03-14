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
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

MIT Licensed. See [LICENSE](https://github.com/flokoe/terraform-hcloud-server-module/blob/main/LICENSE) for full details.
