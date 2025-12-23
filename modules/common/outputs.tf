output "bff_client_id" {
  value = keycloak_openid_client.bff.id
}

output "resource_server_id" {
  value = keycloak_openid_client.bff.resource_server_id
}

output "common_auth_resource_id" {
  description = "Common authentication resource ID"
  value       = keycloak_openid_client_authorization_resource.auth_profile.id
  sensitive   = true
}