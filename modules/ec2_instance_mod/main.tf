resource "aws_instance" "myapp_server" {
  count = var.instance_count
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.my_subnet_id_value
  key_name = var.proj_key_name

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}