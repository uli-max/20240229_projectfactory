terraform {
  required_version = ">=v1.4.6"

  //TODO add the s3 block here

  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">=1.35.6"
    }
  }
}