output "id" {
  description = "Unique ID of the server"
  value       = hcloud_server.this.id
}

output "name" {
  description = "Name of the server"
  value       = hcloud_server.this.name
}

output "public_ipv4_address" {
  description = "The public IPv4 address"
  value       = hcloud_server.this.ipv4_address
}
