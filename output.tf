output "pub_subnet_2a" {
  value = module.eks_network.subnet_pub_2a
}

output "pub_subnet_2b" {
  value = module.eks_network.subnet_pub_2b
}

output "pub_subnet_2c" {
  value = module.eks_network.subnet_pub_2c
}

output "priv_subnet_2a" {
  value = module.eks_network.subnet_priv_2a
}

output "priv_subnet_2b" {
  value = module.eks_network.subnet_priv_2b
}

output "priv_subnet_2c" {
  value = module.eks_network.subnet_priv_2c
}

output "eks_vpc_config" {
  value = module.eks_cluster.eks_vpc_config
}

output "oidc" {
  value = module.eks_cluster.oidc
}