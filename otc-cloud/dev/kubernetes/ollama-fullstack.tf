#resource "helm_release" "iits_llm_fullstack" {
#  name       = "iits-llm-fullstack"
#  repository = "https://charts.iits.tech"
#  chart      = "iits-ollama-fullstack"
#  version    = local.chart_versions.iits_llm_fullstack
#  namespace  = "llm"
#
#  values = [
#    <<-EOF
#    ingress:
#      airbyte:
#        host: "airbyte.${var.domain_name}"
#    ollama:
#      ollama:
#        ollama:
#          gpu:
#            number: 2
#        ingress:
#          host: "${var.domain_name}"
#      webui:
#        env:
#          OLLAMA_API_BASE_URL: "https://${var.domain_name}/api"
#        ingress:
#          host: "${var.domain_name}"
#    EOF
#  ]
#}