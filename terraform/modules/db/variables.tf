variable "zone" {
  description = "zone"
  default     = "ru-central1-a"
}

variable "db_disk_image" {
  description = "yc compute image list"
#  default = "reddit-base-db"
}

variable "public_key_path" {
  description = "generate key ssh key"
}

variable "private_key_path" {
  description = "generate key ssh key"
}
