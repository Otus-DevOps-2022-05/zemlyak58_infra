variable "zone" {
  description = "zone"
  default     = "ru-central1-a"
}

variable "app_disk_image" {
  description = "yc compute image list"
  default     = "reddit-base-app"
}

variable "db_disk_image" {
  description = "yc compute image list"
  default     = "reddit-base-db"
}

variable "private_key_path" {
  description = "generate key ssh key"
}

variable "public_key_path" {
  description = "generate key ssh key"
}

variable "subnet_id" {
  description = "vpc_subnet_id"
}
