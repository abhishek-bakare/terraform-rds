# DB subnet creation

resource "aws_db_subnet_group" "my_db_subnet_grp" {

  subnet_ids = [aws_subnet.db_subnet_ids.id, aws_subnet.db_subnet_ids.id]
  name       = "vi_subnet_group"

  tags = {
    Name = "my db subnet group"
  }

}