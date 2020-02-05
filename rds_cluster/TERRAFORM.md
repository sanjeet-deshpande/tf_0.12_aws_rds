
# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config_vars | config variables | map(string) | - | yes |
| tags | tagging variables | map(string) | - | yes |
| delimiter | string separator | string | '-' | no |
| apply_immediately | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. | string | `false` | no |
| aurora_cluster_name |  | string | - | yes |
| availability_zones | A comma separated list of Availability Zones in the Region. | list | `<list>` | no |
| aws_security_groups | List of VPC security groups to associate with the Cluster. | list | - | yes |
| backtrack_window | (Optional) The target backtrack window, in seconds. Only available for aurora engine currently. | string | `0` | no |
| backup_retention_period | The backup retention period | string | `30` | no |
| database_name | The name for your database of up to 8 alpha-numeric characters. | string | - | yes |
| db_cluster_parameter_group_name | A cluster parameter group to associate with the cluster. | string | - | yes |
| db_port | The port on which the DB accepts connections. | string | `3306` | no |
| db_subnet_group_name | A DB subnet group to associate with this DB instance. | string | - | yes |
| deletion_protection | (Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false. | string | `true` | no |
| enabled_cloudwatch_logs_exports | (Optional) List of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: audit, error, general, slowquery. | list | `<list>` | no |
| instance_class | Instance class to use when creating RDS cluster - db.t2.small/db.t2.medium/db.r3.large/db.r3.xlarge/db.r3.2xlarge/db.r3.4xlarge/db.r3.8xlarge | string | `db.t2.medium` | no |
| kms_key_id | The ARN for the KMS encryption key | string | - | yes |
| master_password | Password for the master DB user. | string | - | yes |
| master_username | Username for the master DB user. | string | - | yes |
| preferred_backup_window | The daily time range during which automated backups are created | string | `01:00-03:00` | no |
| publicly_accessible | Should the instance get a public IP address? | string | `false` | no |
| rds_cluster_engine | The name of the database engine to be used for this DB cluster. | string | `aurora` | no |
| engine_mode | (Optional) The database engine mode. Valid values: global, multimaster, parallelquery, provisioned, serverless. Defaults to: provisioned. See the RDS User Guide for limitations when using serverless.| string | `provisioned` | no |
| rds_cluster_engine_version | The database engine version. | string | `5.6.10a` | no |
| replication_source_identifier | (Optional). ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. | string | ` ` | no |
| skip_final_snapshot | Determines whether a final DB snapshot is created before the DB cluster is deleted. | string | `false` | no |
| snapshot_identifier | (Optional) Specifies whether or not to create this cluster from a snapshot. you can use name or ARN when specifying a DB cluster snapshot. | string | ` ` | no |
| source_region | (Optional). The source region for an encrypted replica DB cluster | string | `` | no |
| storage_encrypted | Specifies whether the DB cluster is encrypted. | string | `true` | no |
| vpc_id | VPC ID | string | - | yes |

# Outputs

| Name | Description |
|------|-------------|
| allocated_storage |  |
| backtrack_window |  |
| cluster_identifier |  |
| cluster_members |  |
| database_name |  |
| deletion_protection |  |
| enabled_cloudwatch_logs_exports |  |
| engine |  |
| engine_version |  |
| rds_cluster_arn |  |
| rds_cluster_id |  |
| reader_endpoint |  |
| replication_source_identifier |  |
| status |  |
| writer_endpoint |  |
