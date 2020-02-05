output "rds_db_parameter_group_id" {
  value = module.aurora_db_parameter_group.rds_db_parameter_group_id
}

output "rds_db_parameter_group_arn" {
  value = module.aurora_db_parameter_group.rds_db_parameter_group_arn
}

output "rds_db_subnet_group_id" {
  value = module.aurora_db_subnet_group.rds_db_subnet_group_id
}

output "rds_db_subnet_group_arn" {
  value = module.aurora_db_subnet_group.rds_db_subnet_group_arn
}

output "aws_rds_cluster_parameter_group_id" {
  value = module.aurora_cluster_parameter_group.aws_rds_cluster_parameter_group_id
}

output "aws_rds_cluster_parameter_group_arn" {
  value = module.aurora_cluster_parameter_group.aws_rds_cluster_parameter_group_arn
}