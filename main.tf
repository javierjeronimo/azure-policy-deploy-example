# MIT License

provider "azurerm" {
  features {}
}

# Deploy just a single Azure Policy definition.
module "policy" {
  source          = "./modules/policy-definition"
  policy_id       = "d1_sta_audit"
  policy_version  = "1.0.0"
  policy_category = "data"
}
