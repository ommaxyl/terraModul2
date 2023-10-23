provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.my_subnet_id_value
}