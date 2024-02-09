module "tf_state_bucket" {
  source  = "git::https://github.com/iits-consulting/terraform-opentelekomcloud-project-factory.git//modules/state_bucket?ref=feature/tf-state"
  tf_state_bucket_name = "${var.context}-${var.stage}-kubernetes-tfstate"
  providers = {
    opentelekomcloud = opentelekomcloud.top_level_project
  }
  region = var.region
}

output "terraform_state_backend_configs" {
  value = module.tf_state_bucket.terraform_state_backend_config
}