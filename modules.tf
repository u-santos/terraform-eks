module "eks_network" {
  source = "./modules/network"

  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags

}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_2a = module.eks_network.subnet_pub_2a
  public_subnet_2b = module.eks_network.subnet_pub_2b
  public_subnet_2c = module.eks_network.subnet_pub_2c
}