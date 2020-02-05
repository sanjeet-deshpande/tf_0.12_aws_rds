
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables | map(string) | - | yes |
| tags | tagging variables | map(string) | - | yes |
| delimiter | string separator | string | '-' | no |
| db_subnet_group_name | The name of the DB subnet group. | string | - | yes |
| subnets | A comma separated list of Subnets to use in creating RDS subnet group (must already exist) | string | - | yes |

# Outputs

| Name | Description |
|------|-------------|
| rds_db_subnet_group_arn |  |
| rds_db_subnet_group_id |  |
