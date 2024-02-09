terraform {
  required_version = ">=v1.4.6"

  backend "s3" {
    bucket                      = "refactor-dev-kubernetes-tfstate"
    kms_key_id                  = "arn:aws:kms:eu-de:45d601c35d8e4400ac11bce9d8eae5d1:key/ba5e40f7-fb90-4886-8447-3c23b9c245ec"
    key                         = "tfstate"
    region                      = "eu-de"
    endpoint                    = "obs.eu-de.otc.t-systems.com"
    encrypt                     = true
    skip_region_validation      = true
    skip_credentials_validation = true
  }

  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">=1.35.6"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.0"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}
