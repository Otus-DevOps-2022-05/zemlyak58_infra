variable "zone" {
  description = "zone"
  default     = "ru-central1-a"
}

variable "app_disk_image" {
  description = "yc compute image list"
  default = "reddit-base-app"
}

variable "db_disk_image" {
  description = "yc compute image list"
  default = "reddit-base-db"
}

variable "public_key_path" {
  description = "generate key ssh key"
    default   = "~/.ssh/appuser.pub"
}

variable "subnet_id" {
  description = "vpc_subnet_id"
  default = "reddit-base-db"
    default   = "~/.ssh/appuser.pub"
}
