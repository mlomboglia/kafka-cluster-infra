
resource "aws_security_group" "kafka_sg" {
    name = "vpc_kafka_sg"
    description = "Accept incoming connections."

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "SSH"
    }
    ingress {
        from_port = 8083
        to_port = 8083
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Kafka Connect REST API" 
    }
    ingress {
        from_port = 8088
        to_port = 8088
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "KSQL Server REST API" 
    }
    ingress {
        from_port = 8082
        to_port = 8082
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "REST Proxy" 
    }
    ingress {
        from_port = 8081
        to_port = 8081
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Schema Registry REST API" 
    }
    ingress {
        from_port = 1099
        to_port = 1099
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "JMX" 
    }
    ingress {
        from_port = 2181
        to_port = 2181
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ZooKeeper" 
    }
    ingress {
        from_port = 2888
        to_port = 2888
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ZooKeeper" 
    }
    ingress {
        from_port = 3888
        to_port = 3888
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ZooKeeper" 
    }
    ingress {
        from_port = 9092
        to_port = 9092
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Kafka Brokers"
    }
    ingress {
        from_port = 9021
        to_port = 9021
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Control Center"
    }
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"] 
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${aws_vpc.default.id}"

    tags = {
        Name = "kafka_cluster_sg"
    }
}

