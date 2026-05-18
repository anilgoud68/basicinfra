module "resourcegroup" {
  source = "../modules/resource_group"
  rg_name = "basic-rg"
  rg_location = "eastus"
}

module "storageaccount" {
  depends_on = [ module.resourcegroup ]
  source = "../modules/storageaccount"
  stg_name = "storageaccount195"
  rg_name = "basic-rg"
  rg_location = "eastus"
}