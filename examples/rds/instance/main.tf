locals {

  replica_instance_name_0 = "${var.instance_identifier}${var.delimiter}replica-0"
  instance_name_1         = "${var.instance_identifier}${var.delimiter}latest"
}

# RDS DB instance with parameter group/db subnet group and option group
module "rds_instances" {
  source                     = "git::https://github.com/sanjeet-deshoande/tf_0.12_aws_rds.git//rds_db_instance?ref=v0.0.1"
  config_vars                = var.config_vars
  tags                       = var.tags
  instance_identifier        = var.instance_identifier
  delimiter                  = var.delimiter
  parameter_group_name       = data.terraform_remote_state.rds_resources.outputs.rds_db_parameter_group_id
  db_subnet_group_name       = data.terraform_remote_state.rds_resources.outputs.rds_db_subnet_group_id
  option_group_name          = data.terraform_remote_state.rds_resources.outputs.rds_db_option_group_id
  publicly_accessible        = var.publicly_accessible
  instance_class             = var.instance_class
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
}

# Add replica server to the RDS instance
module "rds_instances_replica" {
  source                     = "git::https://github.com/sanjeet-deshoande/tf_0.12_aws_rds.git//rds_db_instance?ref=v0.0.1"
  config_vars                = var.config_vars
  tags                       = var.tags
  instance_identifier        = local.replica_instance_name_0
  delimiter                  = var.delimiter
  replicate_source_db        = module.rds_instances.instance_id[0]
  option_group_name          = data.terraform_remote_state.rds_resources.outputs.rds_db_option_group_id
  publicly_accessible        = var.publicly_accessible
  instance_class             = var.instance_class
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
}

# Another RDS DB instance without Replica
module "rds_instances_2" {
  source                     = "git::https://github.com/sanjeet-deshoande/tf_0.12_aws_rds.git//rds_db_instance?ref=v0.0.1"
  config_vars                = var.config_vars
  tags                       = var.tags
  instance_identifier        = local.instance_name_1
  delimiter                  = var.delimiter
  publicly_accessible        = var.publicly_accessible
  instance_class             = var.instance_class
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  security_group_ids         = var.security_group_ids
}

