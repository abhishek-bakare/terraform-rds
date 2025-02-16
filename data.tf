data "aws_vpc" "my_vpc" {

  filter {
    name   = "tag:Name"
    values = [var.vpc_my]
  }

}

data "aws_subnets" "db_subnet_ids" {

  filter {
    name = "vpc-id"
    values = [data.aws_vpc.my_vpc.id]
  }

  filter {
    name   = "tag:Name"
    values = ["vi_private*"]
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