terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

variable "realm_id" {}

resource "keycloak_openid_client" "bff" {
  realm_id  = var.realm_id
  client_id = "bff-service"
  name      = "Backend For Frontend"

  enabled   = true
  access_type = "CONFIDENTIAL"

  service_accounts_enabled     = true
  standard_flow_enabled        = false
  direct_access_grants_enabled = false

  authorization {
    policy_enforcement_mode          = "ENFORCING"
    allow_remote_resource_management = true
  }
}
