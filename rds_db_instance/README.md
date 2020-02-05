AWS RDS DB INSTANCE
================

Terraform module to create RDS DB instance.

----------------------------------------

Usage
-----

```bash

module "rds_instances" {
  source                        = "../../../modules/rds/rds_db_instance"
  config_vars                   = var.config_vars
  tags                          = var.tags
  instance_identifier           = var.instance_identifier
  delimiter                     = var.delimiter
  parameter_group_name          = data.terraform_remote_state.rds_resources.outputs.rds_db_parameter_group_id
  db_subnet_group_name          = data.terraform_remote_state.rds_resources.outputs.rds_db_subnet_group_id
  option_group_name             = data.terraform_remote_state.rds_resources.outputs.rds_db_option_group_id
  publicly_accessible           = var.publicly_accessible
  instance_class                = var.instance_class
  auto_minor_version_upgrade    = var.auto_minor_version_upgrade
}
```

Examples
--------

 [RDS DB Instance]()
