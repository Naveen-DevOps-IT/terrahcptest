provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "web" {
count = 3
ami = "ami-000ec6c25978d5999"
instance_type = "t2.micro"
tags = {
Name = var.instance_name[count.index]
}
}

variable "instance_name" {
  default = ["dev-server", "test-server", "prod-server"]
}
