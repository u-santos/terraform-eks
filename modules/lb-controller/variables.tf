variable "project_name" {
  type        = string
  description = "Project name to be used on name resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be add to AWS resources"
}