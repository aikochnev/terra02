# Переменные первой, web-ВМ

variable "vm_web_name" {
  type        = string
  description = "Имя web-виртуальной машины"
  default     = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  type        = string
  description = "Аппаратная платформа web-ВМ"
  default     = "standard-v3"
}

variable "vm_web_cores" {
  type        = number
  description = "Количество vCPU web-ВМ"
  default     = 2
}

variable "vm_web_memory" {
  type        = number
  description = "Объём памяти web-ВМ в ГБ"
  default     = 1
}

variable "vm_web_core_fraction" {
  type        = number
  description = "Гарантированная доля vCPU web-ВМ, %"
  default     = 5
}

variable "vm_web_disk_type" {
  type        = string
  description = "Тип загрузочного диска web-ВМ"
  default     = "network-hdd"
}

variable "vm_web_disk_size" {
  type        = number
  description = "Размер загрузочного диска web-ВМ в ГБ"
  default     = 5
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
  description = "Пользователь ОС для SSH-подключения к web-ВМ"
  default     = "ubuntu"
}


# Переменные второй, db-ВМ

variable "vm_db_name" {
  type        = string
  description = "Имя db-виртуальной машины"
  default     = "netology-develop-platform-db"
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

variable "vm_db_cores" {
  type        = number
  description = "Количество vCPU db-ВМ"
  default     = 2
}

variable "vm_db_memory" {
  type        = number
  description = "Объём памяти db-ВМ в ГБ"
  default     = 2
}

variable "vm_db_core_fraction" {
  type        = number
  description = "Гарантированная доля vCPU db-ВМ, %"
  default     = 20
}

variable "vm_db_disk_type" {
  type        = string
  description = "Тип загрузочного диска db-ВМ"
  default     = "network-hdd"
}

variable "vm_db_disk_size" {
  type        = number
  description = "Размер загрузочного диска db-ВМ в ГБ"
  default     = 8
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

variable "vm_db_ssh_user" {
  type        = string
  description = "Пользователь ОС для SSH-подключения к db-ВМ"
  default     = "ubuntu"
}
