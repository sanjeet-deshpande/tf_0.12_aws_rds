module "aurora_cluster" {
  source                          = "git::https://github.com/sanjeet-deshpande/tf_0.12_aws_rds.git//rds_cluster?ref=v0.0.1"
  config_vars                     = var.config_vars
  tags                            = var.tags
  delimiter                       = var.delimiter
  vpc_id                          = var.vpc_id
  aws_security_groups             = var.security_groups
  database_name                   = var.database_name
  master_username                 = var.master_username
  master_password                 = var.master_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.preferred_backup_window
  aurora_cluster_name             = var.aurora_cluster_identifier
  db_cluster_parameter_group_name = data.terraform_remote_state.aurora_resources.outputs.aws_rds_cluster_parameter_group_id
  db_subnet_group_name            = data.terraform_remote_state.aurora_resources.outputs.rds_db_subnet_group_id
  kms_key_id                      = var.kms_key_arn
}

module "aurora_cluster_instances" {
  source                     = "git::https://github.com/sanjeet-deshpande/tf_0.12_aws_rds.git//rds_cluster_instance?ref=v0.0.1"
  config_vars                = var.config_vars
  tags                       = var.tags
  delimiter                  = var.delimiter
  instance_identifier        = var.instance_identifier
  cluster_identifier         = module.aurora_cluster.rds_cluster_id
  db_parameter_group_name    = data.terraform_remote_state.aurora_resources.outputs.rds_db_parameter_group_id
  cluster_size               = var.cluster_size
  publicly_accessible        = var.publicly_accessible
  instance_class             = var.instance_class
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
}
