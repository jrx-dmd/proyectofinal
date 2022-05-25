variable "do_token" {
  type = string
  default = "dop_v1_ea005dd80184142c7416cdab1e602c5f50f002d498556cee79e3c44f8da52d3a"
}

variable "access_key" {
    type = string
    default = "Q5S7TVJ4W37KE2CU2MWS"
  
}

variable "secret_key" {
    type = string
    default = "YjlHmrSORJ4S/Vera8/hORD/n3iYtKxhkPvHD8MeGco"
  
}
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
