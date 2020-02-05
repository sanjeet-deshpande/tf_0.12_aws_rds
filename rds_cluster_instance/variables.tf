variable "config_vars" {
  type        = map(string)
  description = "config variables"
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "tagging variables."
  default     = {}
}

variable "delimiter" {
  description = "String separator. by default no delimiter."
  default     = ""
}

variable "cluster_identifier" {
  description = "The identifier of the aws_rds_cluster in which to launch this instance."
}

variable "instance_class" {
  description = "Instance class to use when creating RDS cluster - db.t2.small/db.t2.medium/db.r3.large/db.r3.xlarge/db.r3.2xlarge/db.r3.4xlarge/db.r3.8xlarge"
  default     = "db.t2.medium"
}

variable "availability_zone" {
  description = "(Optional, Computed) The EC2 Availability Zone that the DB instance is created in. See docs about the details."
  default     = ""
}

variable "publicly_accessible" {
  description = "Should the instance get a public IP address?"
  default     = false
}

variable "db_parameter_group_name" {
  description = "The name of the DB parameter group to associate with this instance."
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window."
  default     = false
}

variable "cluster_size" {
  description = "Number of cluster instances to create"
  default     = "1"
}

variable "instance_identifier" {
  description = "Instance identifier to identify instances."
}

variable "promotion_tier" {
  description = "Default 0. Failover Priority setting on instance level."
  default     = "0"
}

variable "engine" {
  description = "(Optional) The name of the database engine to be used for the RDS instance. Defaults to aurora. Valid Values: aurora, aurora-mysql, aurora-postgresql."
  default     = "aurora"
}

variable "engine_version" {
  description = "(Optional) The database engine version."
  default     = "5.6.10a"
}

#variable "preferred_instance_backup_window" {
#description = "The daily time range during which automated backups are created"
#}

#variable "preferred_instance_maintenance_window" {
#description = "The window to perform maintenance in. Syntax: ddd:hh24:mi-ddd:hh24:mi"
#}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window."
  default     = "true"
}

variable "monitoring_role_arn" {
  description = "(Optional) The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the AWS Documentation what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances."
  default     = ""
}

variable "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  default     = 0
}

variable "performance_insights_enabled" {
  description = "(Optional) Specifies whether Performance Insights is enabled or not."
  default     = false
}

variable "performance_insights_kms_key_id" {
  description = "(Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true."
  default     = ""
}

variable "copy_tags_to_snapshot" {
  description = "(Optional, boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default false."
  default     = false
}

