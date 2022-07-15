#Создание ВМ (из образа)
resource "yandex_compute_instance" "db" {
  name  = "reddit-db"
  zone  = var.zone

  labels = {
  tags = "reddit-db"
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
    }
  }

  network_interface {
#     source          = "./modules/vpc"
#     subnet_id = "module.vpc.app-subnet.id
    subnet_id = var.subnet_id
    nat       = true
  }

#Для подключения к ВМ
  connection {
    type        = "ssh"
    host        = self.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key_path)
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

}
