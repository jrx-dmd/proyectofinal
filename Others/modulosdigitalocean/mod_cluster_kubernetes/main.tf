resource "digitalocean_kubernetes_cluster" "prueba" {
    name = var.kubernetes_name
    region = var.region
    version = var.version_kubernetes
    
    node_pool {
        name    = var.name_pool
        size = var.size
        node_count = 1
    }
}