resource "aws_db_instance" "my_db_instance" {

  instance_class                = var.instance_class
  engine                        = var.engine
  engine_version                = var.version_db
  db_name                       = var.db_name
  username                      = var.username
  manage_master_user_password   = true
  master_user_secret_kms_key_id = aws_kms_key.my_kms.id
  skip_final_snapshot           = var.skip_finalsnapshot
  db_subnet_group_name          = aws_db_subnet_group.my_db_subnet_grp.id
  delete_automated_backups      = var.delete_automated_backup
  multi_az                      = var.multi_az_deployment
  publicly_accessible           = var.public_access
  vpc_security_group_ids        = [data.aws_security_group.my_sg.id]
  allocated_storage             = 20

  tags = {
    Name = var.db_tag
  }

}

resource "aws_kms_key" "my_kms" {
  description = "KMS Key for db password"
}