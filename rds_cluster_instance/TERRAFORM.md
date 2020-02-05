
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables | map(string) | - | yes |
| tags | tagging variables | map(string) | - | yes |
| delimiter | string separator | string | '-' | no |
| availability_zone | (Optional, Computed) The EC2 Availability Zone that the DB instance is created in. See docs about the details. | string | "" | no |
| apply_immediately | Specifies whether any database modifications are applied immediately, or during the next maintenance window. | string | `false` | no |
| auto_minor_version_upgrade | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. | string | `true` | no |
| cluster_identifier | The identifier of the aws_rds_cluster in which to launch this instance. | string | - | yes |
| cluster_size | Number of cluster instances to create | string | `2` | no |
| copy_tags_to_snapshot | (Optional, boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default false. | boolean | false | no |
| db_parameter_group_name | The name of the DB parameter group to associate with this instance. | string | - | yes |
| engine | (Optional) The name of the database engine to be used for the RDS instance. Defaults to aurora. Valid Values: aurora, aurora-mysql, aurora-postgresql. | string | `5.6.10a` | no |
| engine_version | (Optional) The database engine version. | string | `5.6.10a` | no |
| instance_class | Instance class to use when creating RDS cluster - db.t2.small/db.t2.medium/db.r3.large/db.r3.xlarge/db.r3.2xlarge/db.r3.4xlarge/db.r3.8xlarge | string | `db.t2.medium` | no |
| instance_identifier | Instance identifier to identify instances. | string | - | yes |
| monitoring_interval | (Optional) The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60. | string | `0` | no |
| monitoring_role_arn | (Optional) The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the AWS Documentation what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances. | string | ` ` | no |
| performance_insights_enabled | (Optional) Specifies whether Performance Insights is enabled or not. | boolean | false | no |
| performance_insights_kms_key_id | (Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true. | string | `` | no |
| promotion_tier | Default 0. Failover Priority setting on instance level. | string | `0` | no |
| publicly_accessible | Should the instance get a public IP address? | string | `false` | no |

# Outputs

| Name | Description |
|------|-------------|
| copy_tags_to_snapshot |  |
| dbi_resource_id |  |
| engine |  |
| instance_availability_zone |  |
| instance_id |  |
| instance_identifier |  |
| is_instance_write |  |
| monitoring_interval |  |
| monitoring_role_arn |  |
| performance_insights_enabled |  |
| performance_insights_kms_key_id |  |
