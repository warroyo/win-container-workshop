# Settings

variable "dns_prefix" {
  default = "wdw"
}

variable "count" {
  default = "1"
}

variable "group_name" {
  default = "win-docker-workshop"
}

variable "account" {
  default = "winworkshop"
}

variable "location" {
  default = "westus2"
}

variable "azure_dns_suffix" {
  description = "Azure DNS suffix for the Public IP"
  default     = "cloudapp.azure.com"
}

variable "admin_username" {
  default = "workshop_admin"
}

variable "workshop_image" {
  default = "win2019-docker"
}

variable "vm_size" {
  default = "Standard_D4s_v3"
}
