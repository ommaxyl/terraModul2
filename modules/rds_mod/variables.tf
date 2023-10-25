variable "db_total_storage" {
  description = "This is the total storage number for the database"
  type = number
  default = 10
}
variable "proj_db_name" {
  description = "name of the database"
  type = string
  default = "mydb"
}

variable "db_engine_used" {
  description = "The engine used for the project"
  type = string
  default = "mysql"
}

variable "db_engine_version" {
  description = "The version of the engine used"
  type = string
  default = "5.7"
}

variable "instance_class" {
  description = "Class of instance used"
  type = string
  default = "db.t2.micro"
}

variable "db_username" {
  description = "username for the database"
  type = string
}

variable "db_password" {
  description = "the password for the database"
  type = string
}

variable "parameter_group_name" {
  description = "name of the DB parameter group to associate"
  type = string
  default = "default.mysql5.7"
}