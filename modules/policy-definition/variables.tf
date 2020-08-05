# MIT License

variable "policy_id" {
  description = "Unique ID of the Azure Policy definition. Policy JSON file must be named: <id>_v<version>-rule.json"
}

variable "policy_mode" {
  description = "Azure Policy definition mode: [All, Indexed]"
  default     = "All"
}

variable "policy_category" {
  description = "Category tag to save in Azure Policy definition metadata."
}

variable "policy_version" {
  description = "Semantic version of the Azure Policy definition."
}
