module "cp4s" {
  source = "./module"

  gitops_config = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  server_name = module.gitops.server_name
  namespace = module.gitops_namespace.name
  kubeseal_cert = module.gitops.sealed_secrets_cert
  entitlement_key = var.cp_entitlement_key
  channel = var.cp4s_channel
  storage_class = var.cp4s_storage_class
  roks_auth = var.cp4s_roks_auth
  admin_user = var.cp4s_admin_user
}
