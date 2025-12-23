terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

variable "realm_id" {
  description = "Keycloak realm ID"
  type        = string
}

variable "resource_server_id" {
  description = "Resource server ID for authorization resources"
  type        = string
}

variable "bff_client_id" {
  description = "BFF client ID for roles"
  type        = string
}