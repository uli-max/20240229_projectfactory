provider "opentelekomcloud" {
  auth_url       = "https://iam.${var.region}.otc.t-systems.com/v3"
  security_token = var.ak_sk_security_token
}

provider "kubernetes" {
  host                   = local.secrets["kube_api_endpoint"]
  client_certificate     = base64decode(local.secrets["client_certificate_data"])
  client_key             = base64decode(local.secrets["client_key_data"])
  cluster_ca_certificate = base64decode(local.secrets["kubernetes_ca_cert"])
}

provider "helm" {
  kubernetes {
    host                   = local.secrets["kube_api_endpoint"]
    client_certificate     = base64decode(local.secrets["client_certificate_data"])
    client_key             = base64decode(local.secrets["client_key_data"])
    cluster_ca_certificate = base64decode(local.secrets["kubernetes_ca_cert"])
  }
}
