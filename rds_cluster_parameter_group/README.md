AWS RDS CLUSTER PARAMETER GROUP
===========

Terraform module for Creating DB Cluster Parameter group.

----------------------

Usage
-----

```bash

module "aurora_cluster_parameter_group" {
  source                       = "../../../modules/rds/rds_cluster_parameter_group"
  config_vars                  = var.config_vars
  delimiter                       = var.delimiter
  cluster_parameter_group_name = var.cluster_parameter_group_name
  cluster_parameters           = var.cluster_parameters
  tags                         = var.tags
}
```
