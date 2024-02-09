resource "helm_release" "ollama" {
  name       = "ollama"
  repository = "https://charts.iits.tech"
  chart      = "ollama"
  version    = local.chart_versions.ollama
  namespace  = "llm"
  create_namespace = true

  values = [
    templatefile("ollama-values.yaml", {
      domain_name = var.domain_name
    })
  ]
}