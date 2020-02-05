AWS RDS DB PARAMETER GROUP
===========

Terraform module for creating db parameter group

----------------------

Usage
-----

```bash

module "aurora_db_parameter_group" {
  source                  = "../../../modules/rds/db_parameter_group"
  config_vars             = var.config_vars
  delimiter               = var.delimiter
  db_parameter_group_name = var.db_parameter_group_name
  db_parameter_family     = var.db_parameter_family
  db_parameters           = var.db_parameters
  tags                    = var.tags
}

```
