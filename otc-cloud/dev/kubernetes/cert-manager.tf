resource "helm_release" "cert-manager" {
  name                  = "cert-manager"
  chart                 = "cert-manager"
  repository            = "https://charts.iits.tech"
  version               = local.chart_versions.cert-manager
  namespace             = "cert-manager"
  create_namespace      = true
  wait                  = true
  atomic                = true
  timeout               = 900 // 15 Minutes
  render_subchart_notes = true
  dependency_update     = true
  wait_for_jobs         = true
  values = [yamlencode({
    cert-manager = {
      replicaCount = 2
    }
    clusterIssuer = {
      http = {
        name  = "letsencrypt"
        email = var.email
      }
    }
  })]
  depends_on = [helm_release.traefik]
}