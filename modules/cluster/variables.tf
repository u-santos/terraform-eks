variable "project_name" {
  type        = string
  description = "Project name to be used on name resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be add to AWS resources"
}

variable "public_subnet_2a" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1a"
}

variable "public_subnet_2b" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1b"
}

variable "public_subnet_2c" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1b"
}