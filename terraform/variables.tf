variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-west-1"
}

variable "instance_count" {
  type = map(string)

  default = {
    "rest"            = 1
    "connect"         = 1
    "ksql"            = 1
    "schema"          = 1
    "control_center"  = 1
    "broker"          = 1
    "zookeeper"       = 1
  }
}

variable "instance_prefix" {
  default     = "staging"
}

variable "aws_ami" {
  description = "The AWS AMI."
  default     = "ami-040ba9174949f6de4"
}

variable "aws_instance_type" {
  description = "The AWS Instance Type."
  default     = "t2.small"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "key_name" {
  description = "Key Pair"
  default     = "terraform-ansible-pair"
}





