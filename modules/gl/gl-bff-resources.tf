# GL-SPECIFIC BFF RESOURCES
# These are attached to the BFF ONLY when GL is included

# 1. GL Journals Resource
resource "keycloak_openid_client_authorization_resource" "gl_journals" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "gl-journals"
  type  = "urn:bff:resource:gl:journals"
  uris  = ["/api/gl/journals/*", "/api/journals/*"]
  
  attributes = {
    scope     = "gl"
    module    = "accounting"
    product   = "gl"
  }
}

# 2. GL Reports Resource
resource "keycloak_openid_client_authorization_resource" "gl_reports" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "gl-reports"
  type  = "urn:bff:resource:gl:reports"
  uris  = ["/api/gl/reports/*", "/api/financial-reports/*"]
  
  attributes = {
    scope     = "gl"
    module    = "reporting"
    product   = "gl"
  }
}

# 3. GL Chart of Accounts Resource
resource "keycloak_openid_client_authorization_resource" "gl_chart_of_accounts" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "gl-chart-of-accounts"
  type  = "urn:bff:resource:gl:chart-of-accounts"
  uris  = ["/api/gl/accounts/*", "/api/accounts/*"]
  
  attributes = {
    scope     = "gl"
    module    = "accounts"
    product   = "gl"
  }
}