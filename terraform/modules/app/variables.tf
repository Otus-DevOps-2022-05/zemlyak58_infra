variable "zone" {
  description = "zone"
  default     = "ru-central1-a"
}

variable "app_disk_image" {
  description = "yc compute image list"
#  default = "reddit-base-app"
}

variable "public_key_path" {
  description = "generate key ssh key"
}
