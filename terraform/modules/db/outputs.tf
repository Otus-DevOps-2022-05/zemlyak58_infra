output "all_inst_db_internal_IPs" {
  value = yandex_compute_instance.db.0.network_interface.0.ip_address
}

output "all_inst_db_external_IPs" {
  value = yandex_compute_instance.db.0.network_interface.0.nat_ip_address
}
