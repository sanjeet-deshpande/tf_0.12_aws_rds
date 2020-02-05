
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables - tagging | map | - | yes |
| tags | tag values | map | - | yes |
| delimiter | string separator | string | "" | no |
| db_engine_name | DB Engine Name | string | `aurora` | no |
| db_engine_version | DB Engine version | string | `5.6` | no |
| db_option_group_name | Aurora DB Option Group Name | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| rds_db_option_group_arn |  |
| rds_db_option_group_id |  |
