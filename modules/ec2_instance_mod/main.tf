resource "aws_instance" "my_app_server" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.my_subnet_id_value
  key_name = var.proj_key_name
}