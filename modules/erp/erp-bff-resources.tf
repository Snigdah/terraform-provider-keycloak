# ERP-SPECIFIC BFF RESOURCES

# 1. ERP Orders Resource
resource "keycloak_openid_client_authorization_resource" "erp_orders" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "erp-orders"
  type  = "urn:bff:resource:erp:orders"
  uris  = ["/api/erp/orders/*", "/api/orders/*"]
  
  attributes = {
    scope     = "erp"
    module    = "orders"
    product   = "erp"
  }
}

# 2. ERP Inventory Resource
resource "keycloak_openid_client_authorization_resource" "erp_inventory" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "erp-inventory"
  type  = "urn:bff:resource:erp:inventory"
  uris  = ["/api/erp/inventory/*", "/api/inventory/*"]
  
  attributes = {
    scope     = "erp"
    module    = "inventory"
    product   = "erp"
  }
}

# 3. ERP Customers Resource
resource "keycloak_openid_client_authorization_resource" "erp_customers" {
  realm_id           = var.realm_id
  resource_server_id = var.resource_server_id
  
  name  = "erp-customers"
  type  = "urn:bff:resource:erp:customers"
  uris  = ["/api/erp/customers/*", "/api/customers/*"]
  
  attributes = {
    scope     = "erp"
    module    = "crm"
    product   = "erp"
  }
}