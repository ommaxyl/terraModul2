provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "myVPC" {
  cidr_block = var.my_vpc_cidr_block

}