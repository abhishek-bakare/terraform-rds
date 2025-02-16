# DB subnet creation

resource "aws_db_subnet_group" "my_db_subnet_grp" {

  name = "vi_subnet_group"
  subnet_ids = data.aws_subnets.db_subnet_ids.ids

  tags = {
    Name = "my db sub grp"
  }
  
}