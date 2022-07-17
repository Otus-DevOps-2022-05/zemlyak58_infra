variable zone {
  description = "zone"
  default     = "ru-central1-a"
}

variable app_disk_image {
  description = "yc compute image list"
  #  default = "reddit-base-app"
}

variable private_key_path {
  description = "Path to private key for provisioner access"
  default   = "~/.ssh/appuser"
}
variable public_key_path {
  description = "generate key ssh key"
  default   = "~/.ssh/appuser.pub"
}

variable subnet_id {
  description = "vpc_subnet_id"
}

variable counts {
  description = "instance count"
  default     = "1"
}

variable ip_mongod {
description = "private mongod IP"
}
