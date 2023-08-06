variable "project_name" {
  type        = string
  description = "Project name to be used on name resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be add to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name where the nodes will be created."
}

variable "private_subnet_2a" {
  type        = string
  description = "Private subnet ID to be attached on EKS nodes."
}

variable "private_subnet_2b" {
  type        = string
  description = "Private subnet ID to be attached on EKS nodes."
}

variable "private_subnet_2c" {
  type        = string
  description = "Private subnet ID to be attached on EKS nodes."
}