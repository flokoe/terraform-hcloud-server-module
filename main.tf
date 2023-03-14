resource "hcloud_server" "this" {
  name               = var.name
  server_type        = var.server_type
  image              = var.image
  location           = var.location
  user_data          = var.user_data
  ssh_keys           = var.ssh_keys
  keep_disk          = var.keep_disk
  labels             = var.labels
  backups            = var.backups
  firewall_ids       = var.firewall_ids
  placement_group_id = var.placement_group_id
  delete_protection  = var.delete_protection
  rebuild_protection = var.rebuild_protection

  public_net {
    ipv4_enabled = var.public_ipv4_enabled
    ipv4         = var.primary_ipv4_id

    ipv6_enabled = var.public_ipv6_enabled
    ipv6         = var.primary_ipv6_id
  }

  # network {}
}

resource "hcloud_server_network" "this" {
  count = var.attach_private_network ? 1 : 0

  server_id = hcloud_server.this.id

  network_id = var.network_id
  subnet_id  = var.subnet_id

  ip        = var.ip
  alias_ips = var.alias_ips
}

resource "hcloud_rdns" "ipv4" {
  count = var.public_ipv4_enabled && var.rdns ? 1 : 0

  server_id  = hcloud_server.this.id
  ip_address = hcloud_server.this.ipv4_address
  dns_ptr    = var.rdns
}

resource "hcloud_rdns" "ipv6" {
  count = var.public_ipv6_enabled && var.rdns ? 1 : 0

  server_id  = hcloud_server.this.id
  ip_address = hcloud_server.this.ipv6_address
  dns_ptr    = var.rdns
}
