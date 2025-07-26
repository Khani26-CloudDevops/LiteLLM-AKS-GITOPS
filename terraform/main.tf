module "prod_rg" {
  source   = "./modules/resource-group"
  name     = var.resource_group_name
  location = var.location
  tags = var.tags
}


data "azurerm_subnet" "existing" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_resource_group_name
}

module "aks_litellm" {
  source              = "./modules/aks"
  resource_group_name = module.prod_rg.name
  cluster_name        = var.cluster_name
  location            = var.location
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  acr_sku             = "Standard"
  vnet_subnet_id      = data.azurerm_subnet.existing.id
  depends_on          = [ module.prod_rg ]
}