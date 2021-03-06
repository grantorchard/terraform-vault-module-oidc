resource vault_jwt_auth_backend "this" {
  path               = var.path
  type               = var.type
  oidc_discovery_url = "https://login.microsoftonline.com/${var.azure_tenant_id}/v2.0"
  oidc_client_id     = var.oidc_client_id
  oidc_client_secret = var.oidc_client_secret
  default_role       = var.default_role
}

resource vault_jwt_auth_backend_role "this" {
  backend               = vault_jwt_auth_backend.this.path
  role_name             = var.default_role
  token_policies        = var.token_policies
  user_claim            = "email"
  role_type             = "oidc"
  allowed_redirect_uris = var.web_redirect_uris
}