provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "rest" {
    count = var.instance_count["rest"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-rest-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}

resource "aws_instance" "connect" {
    count = var.instance_count["connect"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-connect-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}

resource "aws_instance" "ksql" {
    count = var.instance_count["ksql"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type 
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-ksql-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}
resource "aws_instance" "control_center" {
    count = var.instance_count["control_center"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-control-center-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}

resource "aws_instance" "schema" {
    count = var.instance_count["schema"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type 
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-schema-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}

resource "aws_instance" "broker" {
    count = var.instance_count["broker"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-broker-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}

resource "aws_instance" "zookeeper" {
    count = var.instance_count["zookeeper"]
    ami = var.aws_ami
    instance_type = var.aws_instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["${aws_security_group.kafka_sg.id}"] 
    subnet_id = aws_subnet.default.id
    associate_public_ip_address = true
    source_dest_check = false
    tags = {
        Name = "kafka-zookeeper-${var.instance_prefix}-${format("%02d", count.index+1)}"
    }
}