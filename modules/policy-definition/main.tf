# MIT License

locals {
  policy_rule_file   = format("/policies/%s_v%s-rule.json", var.policy_id, var.policy_version)
  policy_params_file = format("/policies/%s_v%s-params.json", var.policy_id, var.policy_version)
  policy_name        = "${var.policy_id}_v${var.policy_version}"
}

resource "azurerm_policy_definition" "policy" {
  name         = local.policy_name
  display_name = local.policy_name

  policy_type = "Custom"
  mode        = var.policy_mode

  metadata = <<METADATA
{
    "category": "${var.policy_category}",
    "version": "${var.policy_version}"
}
METADATA

  policy_rule = file(local.policy_rule_file)
  parameters  = fileexists(local.policy_params_file) ? file(local.policy_params_file) : null
}
