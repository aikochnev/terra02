###cloud vars

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}

variable "image_family" {
  type        = string
  description = "Семейство публичного образа Compute Cloud"
  default     = "ubuntu-2204-lts"
}

variable "vm_web_name" {
  type        = string
  description = "Имя web-виртуальной машины"
  default     = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  type        = string
  description = "Идентификатор аппаратной платформы web-ВМ"
  default     = "standard-v3"
}

variable "vm_web_cores" {
  type        = number
  description = "Количество vCPU web-ВМ"
  default     = 2
}

variable "vm_web_memory" {
  type        = number
  description = "Объём RAM web-ВМ в ГБ"
  default     = 1
}

variable "vm_web_core_fraction" {
  type        = number
  description = "Гарантированная доля производительности vCPU, %"
  default     = 20
}

variable "vm_web_disk_type" {
  type        = string
  description = "Тип загрузочного диска web-ВМ"
  default     = "network-hdd"
}

variable "vm_web_disk_size" {
  type        = number
  description = "Размер загрузочного диска web-ВМ в ГБ"
  default     = 8
}

variable "vm_web_preemptible" {
  type        = bool
  description = "Использовать прерываемую web-ВМ"
  default     = true
}

variable "vm_web_nat" {
  type        = bool
  description = "Назначить web-ВМ публичный IPv4-адрес"
  default     = true
}

variable "vm_web_ssh_user" {
  type        = string
  description = "Пользователь ОС для SSH-подключения"
  default     = "ubuntu"
}

variable "vm_web_serial_port_enable" {
  type        = number
  description = "Включить serial console для web-ВМ"
  default     = 1
}
