provider "aws" {
  region = var.my_region
}

module "myVPC" {
  source            = "./modules/vpc_mod"
  my_vpc_cidr_block = var.proj_cidr_block
  my_private_subnet = var.proj_private_subnet
  my_public_subnet  = var.proj_public_subnet
}

/*module "ec2_instance" {
  source              = "./modules/ec2_instance_mod"
  ami_value           = "ami-0fc5d935ebf8bc3bc"
  instance_type_value = "t2.micro"
  my_subnet_id_value  = "subnet-05cfbcd5ecf0ff4f0"
  proj_key_name       = "demo-key"
  instance_count      = 2
  instance_name       = "appserver"

}

module "my_s3" {
  source = "./modules/s3_bucket_mod"
}

module "my_database" {
  source      = "./modules/rds_mod"
  db_username = "foo"
  db_password = "foobarbaz"
}*/