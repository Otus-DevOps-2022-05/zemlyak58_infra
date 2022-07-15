output "external_ip_address_db" {
  value = module.db.network_interface.0.nat_ip_address
}
