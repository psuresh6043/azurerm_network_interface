################################
#### required variables#########
################################
variable "ip_configuration_name" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "private_ip_address_allocation" {
  type = string
}

variable "location" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}

################################
#### optional variables#########
################################

variable "dns_servers" {
  type    = list(any)
  default = null
}
variable "edge_zone" {
  type    = string
  default = null
}
variable "enable_ip_forwarding" {
  type    = bool
  default = null
}
variable "enable_accelerated_networking" {
  type    = bool
  default = null
}
variable "internal_dns_name_label" {
  type    = string
  default = null
}
variable "tags" {
  type    = any
  default = null
}
variable "private_ip_address" {
  type    = string
  default = null
}
variable "public_ip_address_id" {
  type = string
  default = null
}