data "aws_vpc" "my_vpc" {

  filter {
    name   = "tag:Name"
    values = [var.vpc_my]
  }

}

data "aws_subnets" "db_subnet_ids" {

  filter {
    name   = "tag:Name"
    values = ["vi_mysql_db"]
  }

}

data "aws_availability_zones" "available" {
  state = "available"
}
data "aws_security_group" "my_sg" {
  filter {
    name   = "tag:Name"
    values = ["vi_sg"]
  }
}