# 1. AUTHENTICATION & PROFILE RESOURCES
# -------------------------------------
resource "keycloak_openid_client_authorization_resource" "auth_profile" {
  realm_id           = var.realm_id
  resource_server_id = keycloak_openid_client.bff.resource_server_id
  
  name        = "auth-profile"
  display_name = "Authentication & User Profile"
  type        = "urn:bff:resource:auth"
  uris        = ["/api/auth/*", "/api/profile/*", "/api/users/*"]
  
  attributes = {
    product   = "common"
    category  = "authentication"
    scope     = "all"
  }
}
