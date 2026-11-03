output "namespace" {
  value = kubernetes_namespace_v1.app.metadata[0].name
}

output "url" {
  value = "http://localhost:${var.port}"
}