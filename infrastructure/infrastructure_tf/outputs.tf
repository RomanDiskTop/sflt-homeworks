output "ws_internal_ips" {
  description = "Внутренние IP-адреса агентов"
  value = [
    yandex_compute_instance.ws1.network_interface[0].ip_address,
    yandex_compute_instance.ws2.network_interface[0].ip_address,
  ]
}