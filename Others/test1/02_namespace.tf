provider "kubernetes" {
  config_path   = "${local_file.kubernetes_config.filename}"
}

resource "kubernetes_namespace" "pruebanamespace" {
    metadata {
      name = var.kubernetes_namespace
    }
  
}