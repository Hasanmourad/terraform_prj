resource "aws_subnet" "subnets" {
  for_each = {for subnet in var.subnets : subnet.name => subnet}
  vpc_id = aws_vpc.main.id
  availability_zone = each.value.az
  cidr_block = each.value.cidr
  map_public_ip_on_launch = each.value.type == "public" ? true : false 

  tags = {
    Name = each.key
  }

}

resource "aws_route_table_association" "private_subnet_route" {
    for_each = {for subnet in var.subnets : subnet.name => subnet if subnet.type == "private"  }
    route_table_id = aws_route_table.private_route_table.id
    subnet_id = aws_subnet.subnets[each.key].id
  
}

resource "aws_route_table_association" "public_subnet_route" {
    for_each = {for subnet in var.subnets : subnet.name => subnet if subnet.type == "public"}
    route_table_id = aws_route_table.public_route_table.id
    subnet_id = aws_subnet.subnets[each.key].id
  
}