variable path {
  type    = string
  default = "oidc"
}

variable type {
  type    = string
  default = "oidc"
}

variable azure_tenant_id {
  type = string
}

variable oidc_client_id {
  type = string
}

variable oidc_client_secret {
  type = string
}

variable web_redirect_uris {
  type = list
}

variable namespaces {
  type    = list
  default = []
}

variable token_policies {
  type    = list
  default = []
}

variable default_role {
  type    = string
  default = "default"
}
