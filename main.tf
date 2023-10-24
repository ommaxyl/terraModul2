provider "aws" {
  region = var.my_region
}

/*module "myVPC" {
  source            = "./modules/vpc_mod"
  my_vpc_cidr_block = var.proj_cidr_block
  my_private_subnet = var.proj_private_subnet
  my_public_subnet  = var.proj_public_subnet
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0c65adc9a5c1b5d7c"
  instance_type_value = "t2.micro"
  my_subnet_id_value = "subnet-07cfb090808aeadbb"
  proj_key_name = "demo-key"
}
*/

module "my_s3" {
  source = "./modules/s3_bucket_mod"
}