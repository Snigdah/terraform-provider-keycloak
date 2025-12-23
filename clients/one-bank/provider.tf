terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

provider "keycloak" {
  url       = "http://192.168.10.56:9080"   # ONE BANK VM
  client_id = "admin-cli"
  username  = "admin"
  password  = "admin"
  realm     = "master"
}
