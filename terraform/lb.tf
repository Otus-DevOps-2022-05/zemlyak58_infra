resource "yandex_lb_network_load_balancer" "lb" {
  name = "reddit-app-lb"
  type = "external"

  listener {
    name        = "reddit-app-listener"
    port        = 80
    target_port = 9292
    protocol    = "tcp"
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.lb_tg.id
    healthcheck {
      name = "http"
      http_options {
        port = 9292
        path = "/ping"
      }
    }
  }
}

resource "yandex_lb_target_group" "lb_tg" {
  name = "reddit-app-lb-tg"

  dynamic "target" {
    for_each = yandex_compute_instance.app[*].network_interface[0].ip_address
    content {
      subnet_id = var.subnet_id
      address   = target.value
    }
  }
}
