
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables | map(string) | - | yes |
| tags | tagging variables | map(string) | - | yes |
| delimiter | string separator | string | '-' | no |
| db_parameter_family | The family of the DB parameter group. | string | `aurora5.6` | no |
| db_parameter_group_name | DB Parameter Group Name | string | - | yes |
| db_parameters | A list of db parameter maps to apply | list | `<list>` | no |

# Outputs

| Name | Description |
|------|-------------|
| rds_db_parameter_group_arn |  |
| rds_db_parameter_group_id |  |
