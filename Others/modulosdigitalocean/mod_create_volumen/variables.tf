###Volumenes

variable "region_vl" {
  type = string
  description = "The region volumen"
  default     = "nyc1"
}

variable "name_vl" {
  type = string
  description = "The name volumen"
  default     = "volumen"
}

variable "size_vl" {
  type = number
  description = "The volumen size"
  default     = 5
}

variable "type_filesystem_vl" {
  type = string
  description = "filesistem volumen"
  default     = "ext4"
}

variable "description_vl" {
  type = string
  description = "description volumen"
  default     = "prueba"
}
