# ERP PUBLIC CLIENT (UI)
resource "keycloak_openid_client" "erp_ui" {
  realm_id  = var.realm_id
  client_id = "erp-ui"
  name      = "ERP Frontend"
  enabled   = true

  access_type              = "PUBLIC"
  standard_flow_enabled    = true
  implicit_flow_enabled    = false
  direct_access_grants_enabled = false

  valid_redirect_uris = [
    "http://localhost:3000/*",
    "https://erp.onebank.com/*"
  ]

  web_origins = [
    "http://localhost:3000",
    "https://erp.onebank.com"
  ]
}