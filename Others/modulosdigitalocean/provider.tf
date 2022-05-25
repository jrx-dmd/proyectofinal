terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

###Uso de modulos

module "mod_cluster_kubernetes" {
    source = "./mod_cluster_kubernetes/"

    kubernetes_name = "pruebamodulo"
    region = "nyc1"
    name_pool = "poolpruebamodulo"
}

module "mod_create_volumen" {
    source = "./mod_create_volumen/"
}