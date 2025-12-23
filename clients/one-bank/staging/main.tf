module "realm" {
  source     = "../../../modules/realm"
  realm_name = "one-bank-staging"
}

module "bff" {
  source   = "../../../modules/common"
  realm_id = module.realm.id
}

module "erp" {
  source              = "../../../modules/erp"
  realm_id            = module.realm.id
  resource_server_id  = module.bff.resource_server_id
  bff_client_id       = module.bff.bff_client_id
}

module "gl" {
  source              = "../../../modules/gl"
  realm_id            = module.realm.id
  resource_server_id  = module.bff.resource_server_id
  bff_client_id       = module.bff.bff_client_id
}
