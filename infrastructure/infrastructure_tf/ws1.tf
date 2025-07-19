resource "yandex_compute_instance" "ws1" {
  name        = "ws1"
  hostname    = "ws1"
  platform_id = "standard-v1"
  zone        = var.zone

  resources {
    cores         = var.vm_resources_ws1.cores
    memory        = var.vm_resources_ws1.memory
    core_fraction = var.vm_resources_ws1.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id_ws
      size     = var.vm_resources_ws1.disk_size
    }
  }

  network_interface {
    subnet_id      = yandex_vpc_subnet.default.id
    nat            = true
  }

  scheduling_policy {
    preemptible = var.vm_resources_ws1.preemptible
  }

  metadata = {
    ssh-keys = "debian:${file("~/.ssh/id_rsa.pub")}"
  }

  labels = {
    role = "ws-linux"
  }
}