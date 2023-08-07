output "ca" {
  value = module.eks_cluster.certificate_authority
}

output "ep" {
  value = module.eks_cluster.endpoint
}