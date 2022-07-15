#Создание ВМ (из образа)
resource "yandex_compute_instance" "app" {
  name  = "reddit-app"
  zone  = var.zone

  labels = {
  tags = "reddit-app"
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    source          = "./modules/vpc"
    subnet_id = "module.vpc.app-subnet.id
    nat       = true
  }

#Для подключения к ВМ

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
