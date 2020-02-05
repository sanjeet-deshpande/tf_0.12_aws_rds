AWS RDS DB OPTION GROUP
===========

Terraform module for creating DB Option Group

----------------------

Usage
-----

```bash

module "aurora_db_option_group" {
 source 		 = "git::https://github.com/sanjeet-deshpande/tf_0.12_aws_rds.git//db_option_group?ref=v0.0.1"
 config_vars   		 = var.config_vars
 db_engine_name          = var.db_engine_name
 db_engine_version       = var.db_engine_version
 db_option_group_name    = var.db_option_group_name
 tags			 = var.tags
}

```
