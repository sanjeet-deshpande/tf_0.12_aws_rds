output "instance_identifier" {
  value = aws_rds_cluster_instance.cluster_instance[*].identifier
}

output "instance_id" {
  value = aws_rds_cluster_instance.cluster_instance[*].id
}

output "is_instance_write" {
  value = aws_rds_cluster_instance.cluster_instance[*].writer
}

output "instance_availability_zone" {
  value = aws_rds_cluster_instance.cluster_instance[*].availability_zone
}

output "dbi_resource_id" {
  value = aws_rds_cluster_instance.cluster_instance[*].dbi_resource_id
}

output "engine" {
  value = aws_rds_cluster_instance.cluster_instance[*].engine
}

output "monitoring_role_arn" {
  value = aws_rds_cluster_instance.cluster_instance[*].monitoring_role_arn
}

output "monitoring_interval" {
  value = aws_rds_cluster_instance.cluster_instance[*].monitoring_interval
}

output "performance_insights_enabled" {
  value = aws_rds_cluster_instance.cluster_instance[*].performance_insights_enabled
}

output "performance_insights_kms_key_id" {
  value = aws_rds_cluster_instance.cluster_instance[*].performance_insights_kms_key_id
}

output "copy_tags_to_snapshot" {
  value = aws_rds_cluster_instance.cluster_instance[*].copy_tags_to_snapshot
}

