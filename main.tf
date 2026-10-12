resource "snowflake_external_access_integration" "external_access_integrations" {
  for_each = var.external_access_integrations

  allowed_network_rules = each.value.allowed_network_rules
  enabled               = each.value.enabled
  name                  = each.value.name
  comment               = each.value.comment

  dynamic "allowed_api_authentication_integrations" {
    for_each = each.value.allowed_api_authentication_integrations != null ? [each.value.allowed_api_authentication_integrations] : []
    content {
      integrations = allowed_api_authentication_integrations.value.integrations
      none         = allowed_api_authentication_integrations.value.none
    }
  }

  dynamic "allowed_authentication_secrets" {
    for_each = each.value.allowed_authentication_secrets != null ? [each.value.allowed_authentication_secrets] : []
    content {
      all     = allowed_authentication_secrets.value.all
      none    = allowed_authentication_secrets.value.none
      secrets = allowed_authentication_secrets.value.secrets
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

