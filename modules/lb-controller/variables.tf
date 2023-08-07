variable "project_name" {
  type        = string
  description = "Project name to be used on name resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be add to AWS resources"
}

variable "oidc" {
  type        = string
  description = "HTTPS URL from OIDC provider of the EKS cluster"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}