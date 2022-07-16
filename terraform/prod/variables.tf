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
}

variable "service_account_key_file" {
  description = "https://cloud.yandex.com/en-ru/docs/iam/operations/iam-token/create-for-sa#keys-create"
}

variable "token" {
  description = "token if not service_key_file"
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

variable "public_key_path" {
  description = "generate key ssh key"
}

variable "private_key_path" {
  description = "generate key ssh key"
}

variable "app_servers_count" {
  description = "count VM"
  default     = 1
}
