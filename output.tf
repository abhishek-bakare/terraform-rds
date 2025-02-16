output "subnet_data" {
  value = data.aws_subnets.db_subnet_ids.ids
}
output "rds_address" {

  value = aws_db_instance.my_db_instance.address
}

