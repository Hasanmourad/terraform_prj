variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "project_name" {
  type = string
}

variable "subnets" {
  type = list(object({
    name = string
    type = string
    az = string
    cidr = string
  }))
}