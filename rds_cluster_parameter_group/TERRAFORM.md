
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables | map(string) | - | yes |
| tags | tagging variables | map(string) | - | yes |
| delimiter | string separator | string | '-' | no |
| cluster_parameter_group_family | The family of the DB cluster parameter group. | string | `aurora5.6` | no |
| cluster_parameter_group_name | The name of the DB cluster parameter group. | string | - | yes |
| cluster_parameters | A list of cluster parameter maps to apply | list | `<list>` | no |

# Outputs

| Name | Description |
|------|-------------|
| aws_rds_cluster_parameter_group_arn |  |
| aws_rds_cluster_parameter_group_id |  |
