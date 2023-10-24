variable "ami_value" {
  description = "value for the ami"
  type = string
}

variable "instance_type_value" {
  description = "the instance type"
  type = string
}

variable "my_subnet_id_value" {
  description = "the id for my subnet"
  type = string
}

variable "proj_key_name" {
  description = "The key name that is already set up in your environment"
  type = string
}

variable "instance_count" {
  description = "This is a counter that counts the number of instancfe generated"
  type = number
}

variable "instance_name" {
  description = "Name of the ec2 intance"
  type = string
}