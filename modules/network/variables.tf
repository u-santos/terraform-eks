variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used by vpc."
}

variable "project_name" {
  type        = string
  description = "Project name to be used on name resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be add to AWS resources"
}