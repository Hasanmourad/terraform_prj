variable "project_name" {
  type        = string
  description = "Project name"
}
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "subnets" {
  type = list(object({
    name = string
    type = string
    az = string
    cidr = string
  }))
}