###Kubernetes
variable "kubernetes_name" {
  type = string
  description = "The name of the kubernetes"
  default     = "pruebadavid"
}

variable "region" {
  type = string
  description = "The region of the kubernetes"
  default     = "nyc1"
}
variable "version_kubernetes" {
  type = string
  description = "Version"
  default     = "1.22.8-do.1"
}

variable "size" {
  type = string
  description = "The pool size"
  default     = "s-1vcpu-2gb"
}

variable "name_pool" {
  type = string
  description = "name pool"
  default     = "pruebapool"
}