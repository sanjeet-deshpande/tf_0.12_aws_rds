output "instance_address" {
  value = aws_db_instance.db_instance[*].address
}

output "instance_id" {
  value = aws_db_instance.db_instance[*].id
}

output "instance_arn" {
  value = aws_db_instance.db_instance[*].arn
}

output "instance_availability_zone" {
  value = aws_db_instance.db_instance[*].availability_zone
}

output "instance_endpoint" {
  value = aws_db_instance.db_instance[*].endpoint
}

output "engine" {
  value = aws_db_instance.db_instance[*].engine
}

output "status" {
  value = aws_db_instance.db_instance[*].status
}

output "multi_az" {
  value = aws_db_instance.db_instance[*].multi_az
}

output "storage_encrypted" {
  value = aws_db_instance.db_instance[*].storage_encrypted
}