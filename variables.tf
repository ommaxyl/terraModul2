variable "my_region" {
  description = "The region my infrastructure will be located"
  type        = string
}

variable "proj_cidr_block" {
  description = "The vpc cidr block value"
  type        = string
}

variable "proj_private_subnet" {
  description = "The private cidr value of the subnet"
  type        = string
}

variable "proj_public_subnet" {
  description = "The public cidr value of the subnet"
  type        = string
}