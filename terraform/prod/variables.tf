variable "cloud_id" {
  description = "yc config list"
}

variable "folder_id" {
  description = "yc config list"
}

variable "zone" {
  description = "zone"
  default     = "ru-central1-a"
}

variable "subnet_id" {
  description = "yc vpc subnet list"
  default     = "my-subnet-id"
}

variable "public_key_path" {
  description = "generate key ssh key"
  default   = "~/.ssh/appuser.pub"
}

variable "private_key_path" {
  description = "generate key ssh key"
  default   = "~/.ssh/appuser"
}

variable "image_id" {
  description = "yc compute image list"
}

variable "app_disk_image" {
  description = "yc compute image list"
  default = "reddit-base-app"
}

variable "db_disk_image" {
  description = "yc compute image list"
  default = "reddit-base-db"
}

variable counts {
  description = "instance count"
}

variable access_key {
  description = "bucket account access_key"
}
variable secret_key {
  description = "bucket account secret_key"
}
