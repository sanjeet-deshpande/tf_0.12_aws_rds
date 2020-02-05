output "rds_cluster_id" {
  value = aws_rds_cluster.aurora.id
}

output "writer_endpoint" {
  value = aws_rds_cluster.aurora.endpoint
}

output "reader_endpoint" {
  value = aws_rds_cluster.aurora.reader_endpoint
}

output "cluster_identifier" {
  value = aws_rds_cluster.aurora.cluster_identifier
}

output "cluster_members" {
  value = aws_rds_cluster.aurora.cluster_members
}

output "engine" {
  value = aws_rds_cluster.aurora.engine
}

output "engine_version" {
  value = aws_rds_cluster.aurora.engine_version
}

output "database_name" {
  value = aws_rds_cluster.aurora.database_name
}

output "replication_source_identifier" {
  value = aws_rds_cluster.aurora.replication_source_identifier
}

output "deletion_protection" {
  value = aws_rds_cluster.aurora.deletion_protection
}

output "enabled_cloudwatch_logs_exports" {
  value = aws_rds_cluster.aurora.enabled_cloudwatch_logs_exports
}

output "backtrack_window" {
  value = aws_rds_cluster.aurora.backtrack_window
}

output "rds_cluster_arn" {
  value = aws_rds_cluster.aurora.arn
}

