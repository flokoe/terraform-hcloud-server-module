variable "name" {
  type        = string
  description = "Name of the server to create (must be unique per project and a valid hostname as per RFC 1123)."
}

variable "server_type" {
  type        = string
  description = "Name of the server type this server should be created with."
  default     = "cx11"
}

variable "image" {
  type        = string
  description = "Name or ID of the image the server is created from."
  default     = "debian-11"
}

variable "location" {
  type        = string
  description = "The location name to create the server in."
  default     = null
}

variable "user_data" {
  type        = string
  description = "Cloud-Init user data to use during server creation."
  default     = null
}

variable "ssh_keys" {
  type        = list(string)
  description = "SSH key IDs or names which should be injected into the server at creation time."
  default     = []
}

variable "keep_disk" {
  type        = bool
  description = "If true, do not upgrade the disk. This allows downgrading the server type later."
  default     = false
}

variable "labels" {
  type        = map(string)
  description = "User-defined labels (key-value pairs) should be created with."
  default     = {}
}

variable "backups" {
  type        = bool
  description = "Enable or disable backups."
  default     = false
}

variable "firewall_ids" {
  type        = list(string)
  description = "Firewall IDs the server should be attached to on creation."
  default     = []
}

variable "placement_group_id" {
  type        = string
  description = "Placement Group ID the server added to on creation."
  default     = null
}

variable "delete_protection" {
  type        = bool
  description = "Enable or disable delete protection."
  default     = false
}

variable "rebuild_protection" {
  type        = bool
  description = "Enable or disable rebuild protection."
  default     = false
}

variable "public_ipv4_enabled" {
  type        = bool
  description = "Enable or disable public IPv4 address."
  default     = true
}

variable "public_ipv6_enabled" {
  type        = bool
  description = "Enable or disable public IPv6 address."
  default     = true
}

variable "primary_ipv4_id" {
  type        = string
  description = "ID of existing or external IPv4 address."
  default     = null
}

variable "primary_ipv6_id" {
  type        = string
  description = "ID of existing or external IPv6 address."
  default     = null
}
