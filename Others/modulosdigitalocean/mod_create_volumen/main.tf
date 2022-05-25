resource "digitalocean_volume" "volumen" {
  region                  = var.region_vl
  name                    = var.name_vl
  size                    = var.size_vl
  initial_filesystem_type = var.type_filesystem_vl
  description             = var.description_vl
  lifecycle {
    prevent_destroy = true
  }
}