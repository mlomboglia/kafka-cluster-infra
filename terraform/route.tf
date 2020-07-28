resource "aws_route" "default" {
  route_table_id         = aws_vpc.default.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
}

resource "aws_route_table" "default" {
    vpc_id = aws_vpc.default.id

    route {
       cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.default.id
    }

    tags = {
        Name = "Kafka Public Subnet"
    }
}

resource "aws_route_table_association" "default" {
    subnet_id = aws_subnet.default.id
    route_table_id = aws_route_table.default.id
}



