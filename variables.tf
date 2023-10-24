variable "my_region" {
  description = "The region my infrastructure will be located"
}

variable "proj_cidr_block" {
  description = "The vpc cidr block value"
}

variable "proj_private_subnet" {
  description = "The private cidr value of the subnet"
}

variable "proj_public_subnet" {
  description = "The public cidr value of the subnet"
}