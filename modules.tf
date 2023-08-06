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

module "eks_managed_node_group" {
  source            = "./modules/managed-node-group"
  cluster_name      = module.eks_cluster.cluster_name
  private_subnet_2a = module.eks_network.subnet_priv_2a
  private_subnet_2b = module.eks_network.subnet_priv_2b
  private_subnet_2c = module.eks_network.subnet_priv_2c
  project_name      = var.project_name
  tags              = local.tags
}

module "eks_aws_load_balancer_controller" {
  source       = "./modules/lb-controller"
  project_name = var.project_name
  tags         = local.tags
}