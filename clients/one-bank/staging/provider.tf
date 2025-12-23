terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

provider "keycloak" {
  url       = "http://192.168.10.57:9080"   # ONE BANK STAGING
  client_id = "admin-cli"
  username  = "admin"
  password  = "admin"
  realm     = "master"
}
