variable "external_access_integrations" {
  description = <<EOT
Map of external_access_integrations, attributes below
Required:
    - allowed_network_rules
    - enabled
    - name
Optional:
    - comment
    - allowed_api_authentication_integrations (block):
        - integrations (optional)
        - none (optional)
    - allowed_authentication_secrets (block):
        - all (optional)
        - none (optional)
        - secrets (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    allowed_network_rules = set(string)
    enabled               = bool
    name                  = string
    comment               = optional(string)
    allowed_api_authentication_integrations = optional(object({
      integrations = optional(set(string))
      none         = optional(bool)
    }))
    allowed_authentication_secrets = optional(object({
      all     = optional(bool)
      none    = optional(bool)
      secrets = optional(set(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

