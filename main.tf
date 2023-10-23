provider "aws" {
  region = "us-east-1"
}

module "myVPC" {
  source = "./modules/vpc_mod"
  my_vpc_cidr_block = "10.0.0.0/16"
  my_private_subnet = "10.0.1.0/24"
  my_public_subnet = "10.0.2.0/24"
}

/*module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0c65adc9a5c1b5d7c"
  instance_type_value = "t2.micro"
  my_subnet_id_value = "subnet-07cfb090808aeadbb"
}
*/