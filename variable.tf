variable "instance_class" {

  description = "Defining db instance class"
  type        = string
  default     = "db.t2.micro"

}

variable "engine" {

  description = "Defining db engine"
  type        = string
  default     = "mysql"

}

variable "version_db" {

  description = "Defining db version"
  type        = string
  default     = "8.0.40"

}

variable "db_name" {

  description = "Defining db name"
  type        = string
  default     = "vi_mysql_db"

}

variable "username" {

  description = "Defining db username"
  type        = string
  default     = "admin"

}

variable "skip_finalsnapshot" {

  description = "Skipping final snapshot"
  type        = bool
  default     = true

}

variable "delete_automated_backup" {

  description = "Delete automated backups"
  type        = bool
  default     = true

}

variable "multi_az_deployment" {

  description = "Enabling or disabling multi az deployment"
  type        = bool
  default     = true

}

variable "public_access" {

  description = "Public access on/off"
  type        = bool
  default     = false

}

variable "db_tag" {

  description = "This is db tag"
  type        = string
  default     = "vi_my_first_db"

}

variable "vpc_my" {

  description = "Which VPC to used"
  type        = string
  default     = "vi_vpc"

}

