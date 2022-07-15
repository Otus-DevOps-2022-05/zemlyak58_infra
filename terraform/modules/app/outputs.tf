output "external_ip_address_app" {
  value = module.app.*.network_interface.0.nat_ip_address
}
