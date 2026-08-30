# Переменные первой, web-ВМ

variable "vm_web_name" {
  type        = string
  description = "Суффикс имени web-виртуальной машины"
  default     = "web"
}

variable "vm_web_platform_id" {
  type        = string
  description = "Аппаратная платформа web-ВМ"
  default     = "standard-v3"
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

# Переменные второй, db-ВМ

variable "vm_db_name" {
  type        = string
  description = "Суффикс имени db-виртуальной машины"
  default     = "db"
}

variable "vm_db_zone" {
  type        = string
  description = "Зона доступности db-ВМ"
  default     = "ru-central1-b"
}

variable "vm_db_platform_id" {
  type        = string
  description = "Аппаратная платформа db-ВМ"
  default     = "standard-v3"
}

variable "vm_db_preemptible" {
  type        = bool
  description = "Использовать прерываемую db-ВМ"
  default     = true
}

variable "vm_db_nat" {
  type        = bool
  description = "Назначить db-ВМ публичный IPv4-адрес"
  default     = true
}


variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))

  description = "Вычислительные ресурсы и параметры загрузочных дисков виртуальных машин"
}

variable "metadata" {
  type        = map(string)
  description = "Общие metadata для всех виртуальных машин"
}