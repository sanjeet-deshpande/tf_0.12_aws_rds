
# AWS RDS DB SUBNET GROUP

===========

Terraform module for RDS DB Subnet group.

----------------------

## Usage

----------------------

```bash
module "aurora_db_subnet_group" {
  source                  = "../../db_subnet_group?ref=v0.0.1"
  config_vars             = var.config_vars
  delimiter               = var.delimiter
  subnets                 = var.subnets
  db_subnet_group_name    = var.db_subnet_group_name
  tags                    = var.tags
}
```
