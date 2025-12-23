terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.5.0"
    }
  }
}

provider "keycloak" {
  url       = "http://localhost:9082"   # UTTORA PROD
  client_id = "admin-cli"
  username  = "admin"
  password  = "admin"
  realm     = "master"
}
