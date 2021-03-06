
AWS RDS CLUSTER
===========

Terraform module for creating RDS Cluster (Aurora).

----------------------

Usage
-----

```bash

module "aurora_cluster" {
  source                          = "../../../modules/rds/rds_cluster"
  config_vars                     = var.config_vars
  delimiter                       = var.delimiter
  vpc_id                          = var.vpc_id
  aws_security_groups             = [data.terraform_remote_state.security_group.outputs.security_group_id]
  database_name                   = var.database_name
  master_username                 = var.master_username
  master_password                 = var.master_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.preferred_backup_window
  aurora_cluster_name             = var.aurora_cluster_identifier
  db_cluster_parameter_group_name = data.terraform_remote_state.aurora_resources.outputs.aws_rds_cluster_parameter_group_id
  db_subnet_group_name            = data.terraform_remote_state.aurora_resources.outputs.rds_db_subnet_group_id
  kms_key_id                      = data.terraform_remote_state.kms.outputs.kms_key_arn
  tags                            = var.tags
}

```
