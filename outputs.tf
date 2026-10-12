output "external_access_integrations_id" {
  description = "Map of id values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no id are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_access_integrations_allowed_api_authentication_integrations" {
  description = "Map of allowed_api_authentication_integrations values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no allowed_api_authentication_integrations are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => one(v.allowed_api_authentication_integrations) if v.allowed_api_authentication_integrations != null && length(v.allowed_api_authentication_integrations) > 0 }
}
output "external_access_integrations_allowed_authentication_secrets" {
  description = "Map of allowed_authentication_secrets values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no allowed_authentication_secrets are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => one(v.allowed_authentication_secrets) if v.allowed_authentication_secrets != null && length(v.allowed_authentication_secrets) > 0 }
}
output "external_access_integrations_allowed_network_rules" {
  description = "Map of allowed_network_rules values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no allowed_network_rules are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.allowed_network_rules if v.allowed_network_rules != null && length(v.allowed_network_rules) > 0 }
}
output "external_access_integrations_comment" {
  description = "Map of comment values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no comment are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "external_access_integrations_describe_output" {
  description = "Map of describe_output values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "external_access_integrations_enabled" {
  description = "Map of enabled values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no enabled are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.enabled if v.enabled != null }
}
output "external_access_integrations_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "external_access_integrations_name" {
  description = "Map of name values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no name are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "external_access_integrations_show_output" {
  description = "Map of show_output values across all external_access_integrations, keyed the same as var.external_access_integrations except keys with no show_output are omitted"
  value       = { for k, v in snowflake_external_access_integration.external_access_integrations : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

