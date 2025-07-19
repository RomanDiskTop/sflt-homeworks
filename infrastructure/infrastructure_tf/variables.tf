variable "vm_resources_ws1" {
  type = object({
    cores         = number
    memory        = number
    disk_size     = number
    core_fraction = number
    preemptible   = bool
  })
  default = {
    cores         = 2
    memory        = 1
    disk_size     = 10
    core_fraction = 20
    preemptible   = true
  }
}
variable "vm_resources_ws2" {
  type = object({
    cores         = number
    memory        = number
    disk_size     = number
    core_fraction = number
    preemptible   = bool
  })
  default = {
    cores         = 2
    memory        = 1
    disk_size     = 10
    core_fraction = 20
    preemptible   = true
  }
}
variable "ws1_internal_ip" {
  default     = "10.0.0.2"
  description = "Внутренний IP агента ws1"
}
variable "ws2_internal_ip" {
  default     = "10.0.0.3"
  description = "Внутренний IP агента ws2"
}
variable "image_id_ws" {
  default = "fd8jfh73rvks3qlqp3ck" # Debian 24.4
}
# Обьявляем переменные
variable "token" {
  description = "Yandex Cloud OAuth token"
  type        = string
  sensitive   = true
}
variable "cloud_id" {
  description = "Yandex Cloud cloud ID"
  type        = string
}
variable "folder_id" {
  description = "Yandex Cloud folder ID"
  type        = string
}
variable "ssh_key" {
  description = "Публичный SSH-ключ для доступа к ВМ"
  type        = string
}
variable "region" {
  type    = string
  default = "ru-central1"
}
variable "zone" {
  type    = string
  default = "ru-central1-a"
}