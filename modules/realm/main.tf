terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

variable "realm_name" {}

resource "keycloak_realm" "this" {
  realm   = var.realm_name
  enabled = true
}

output "id" {
  value = keycloak_realm.this.id
}
