provider "aws" {
  region = "us-west-2"
}

module "myVPC" {
  source = "./modules/vpc"
  my_vpc_cidr_block = "10.0.0.0/16"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0c65adc9a5c1b5d7c"
  instance_type_value = "t2.micro"
  my_subnet_id_value = "subnet-07cfb090808aeadbb"
}