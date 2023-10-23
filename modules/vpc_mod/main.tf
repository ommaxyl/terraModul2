provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "myVPC" {
  cidr_block = var.my_vpc_cidr_block

}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.myVPC.id
  cidr_block = var.my_public_subnet
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.myVPC.id
  cidr_block = var.my_private_subnet  
}

resource "aws_security_group" "project_security_group" {
  name        = "project_security_group"
  description = "The security group for the infrastructure"
  vpc_id      = aws_vpc.myVPC.id

  ingress {
    description      = "The inbound traffic to ssh into the infrastructure"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "The inbound traffic to access the infrastructure through port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "project_sec_grp"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myVPC.id

  tags = {
    Name = "igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.myVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  
  tags = {
    Name = "public_route"
  }
}


resource "aws_route_table_association" "rt_ass" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_eip" "proj_eip" {
  
}

resource "aws_nat_gateway" "gw_NAT" {
  allocation_id = aws_eip.proj_eip.id
  subnet_id    = aws_subnet.private_subnet.id 

  tags = {
    Name = "gw-NAT"
  }
  depends_on = [aws_internet_gateway.igw]
}
