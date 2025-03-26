aws_region = "us-east-1"
project_name = "terraform-project"

subnets = [
  { name = "public1",type = "public", az = "us-east-1a",cidr = "10.0.1.0/24" },
  { name = "public2",type = "public", az = "us-east-1b",cidr = "10.0.2.0/24" },
  { name = "private1",type = "private", az = "us-east-1a",cidr = "10.0.3.0/24" },
  { name = "private2",type = "private", az = "us-east-1b",cidr = "10.0.4.0/24" }
]