# GL Public Client (UI)
resource "keycloak_openid_client" "gl_ui" {
  realm_id  = var.realm_id
  client_id = "gl-ui"
  name      = "GL Frontend"
  enabled   = true

  access_type              = "PUBLIC"
  standard_flow_enabled    = true
  implicit_flow_enabled    = false
  direct_access_grants_enabled = false

  valid_redirect_uris = [
    "http://localhost:4000/*",
    "https://gl.onebank.com/*",
    "https://gl.uttorabank.com/*"
  ]

  web_origins = [
    "http://localhost:4000",
    "https://gl.onebank.com",
    "https://gl.uttorabank.com"
  ]
}
