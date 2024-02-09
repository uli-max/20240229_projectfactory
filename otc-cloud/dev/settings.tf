terraform {
  required_version = ">=v1.4.6"

  backend "s3" {
    bucket                      = "refactor-dev-tfstate"
    kms_key_id                  = "arn:aws:kms:eu-de:45d601c35d8e4400ac11bce9d8eae5d1:key/df275948-f9a3-4a18-b93b-d83d4d772ef5"
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
  }
}