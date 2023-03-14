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

  # public_net {}

  # network {}
}
