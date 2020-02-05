AWS Aurora INSTANCE
================

Terraform module to create RDS instance.

----------------------------------------

Usage
-----

```bash

module "rds_cluster_instance" {
  source                           = "../../modules/rds/rds_cluster_instance"
  config_vars                      = var.config_vars
  delimiter                        = var.delimiter
  instance_identifier              = var.instance_identifier
  cluster_identifier               = module.aurora_cluster.cluster_identifier
  db_subnet_group_name             = module.aurora_db_subnet_group.rds_db_subnet_group_id
  db_parameter_group_name          = module.aurora_db_parameter_group.rds_db_parameter_group_id
  monitoring_role_arn              = module.aurora_iam_role.aws_iam_role_arn
  cluster_size                     = var.cluster_size
  tags                             = var.tags
}

```
