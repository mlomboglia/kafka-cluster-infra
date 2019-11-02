resource "aws_subnet" "default" {
    vpc_id = "${aws_vpc.default.id}"

    cidr_block = "${var.public_subnet_cidr}"

    tags = {
        Name = "Kafka Public Subnet"
    }
}