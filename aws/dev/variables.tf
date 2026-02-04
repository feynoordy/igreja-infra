variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "igreja-platform"
}

variable "environment" {
  description = "Ambiente (dev, hml, prod)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.medium"
}

variable "disk_size" {
  description = "Tamanho do disco em GB"
  type        = number
  default     = 50
}

variable "key_name" {
  description = "Nome da chave SSH existente na AWS"
  type        = string
}
