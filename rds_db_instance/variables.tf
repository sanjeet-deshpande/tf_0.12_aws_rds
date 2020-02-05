variable "config_vars" {
  type        = map(string)
  description = "Config variables"
}


variable "tags" {
  type        = map(string)
  description = "Tags for aws resources."
}

variable "database_name" {
  description = "(Optional) The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. "
  default     = ""
}

variable "master_password" {
  description = "(Required unless a snapshot_identifier or replicate_source_db is provided) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file."
  default     = "comp!comp"
}

variable "master_username" {
  description = "Username for the master DB user."
  default     = "comp"
}

variable "instance_class" {
  description = "(Required) The instance type of the RDS instance. - db.t2.small/db.t2.medium/db.r3.large/db.r3.xlarge/db.r3.2xlarge/db.r3.4xlarge/db.r3.8xlarge"
  default     = "db.t2.medium"
}

variable "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible. Default is false."
  default     = false
}

variable "db_subnet_group_name" {
  description = "(Optional) Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC, or in EC2 Classic, if available."
  default     = ""
}

variable "parameter_group_name" {
  description = "(Optional) Name of the DB parameter group to associate."
  default     = ""
}

variable "option_group_name" {
  description = "(Optional) Name of the DB option group to associate."
  default     = ""
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window."
  default     = false
}

variable "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Must be between 0 and 35"
  default     = 7
}

variable "instance_identifier" {
  description = "(Optional, Forces new resource) The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier."
}

variable "engine" {
  description = "The database engine to use. For supported values, see the Engine parameter in API action CreateDBInstance. "
  default     = "mysql"
}

variable "engine_version" {
  description = "(Optional) The database engine version."
  default     = "5.7.22"
}

variable "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false"
  default     = false
}

variable "backup_window" {
  description = "The daily time range during which automated backups are created"
  default     = "01:00-03:00"
}

#variable "maintenance_window" {
#  description = "The window to perform maintenance in. Syntax: ddd:hh24:mi-ddd:hh24:mi"
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

#variable "performance_insights_enabled" {
#  description = "(Optional) Specifies whether Performance Insights is enabled or not."
#  default     = false
#}

#variable "performance_insights_kms_key_id" {
#  description = "(Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true."
#  default     = ""
#}

#variable "performance_insights_retention_period" {
#   description = "(Optional) The amount of time in days to retain Performance Insights data. Either 7 (7 days) or 731 (2 years). "
#   default = 7
#}
variable "copy_tags_to_snapshot" {
  description = "(Optional, boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default false."
  default     = true
}

variable "storage_encrypted" {
  description = "(Optional) Specifies whether the DB instance is encrypted. Note that if you are creating a cross-region read replica this field is ignored and you should instead declare kms_key_id with a valid ARN. The default is false if not specified."
  default     = false
}

variable "allocated_storage" {
  description = "The allocated storage in gibibytes."
  default     = 20
}

variable "availability_zone" {
  description = "The AZ for the RDS instance."
  default     = ""
}

variable "enabled_cloudwatch_logs_exports" {
  description = "(Optional) List of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine): alert, audit, error, general, listener, slowquery, trace, postgresql (PostgreSQL), upgrade (PostgreSQL)."
  type        = list(string)
  default     = ["audit", "slowquery"]
}

variable "multi_az" {
  description = "(Optional) Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "port" {
  description = "(Optional) The port on which the DB accepts connections."
  default     = "3306"
}

variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB instance is deleted."
  default     = true
}

#variable "storage_type" {
#  description = "(Optional) One of standard (magnetic), gp2 (general purpose SSD), or io1 (provisioned IOPS SSD). The default is io1 if iops is specified, gp2 if not."
#}

variable "replicate_source_db" {
  description = "(Optional) Specifies that this resource is a Replicate database, and to use this value as the source database."
  default     = ""
}

variable "delimiter" {
  description = "String separator. by default no delimiter."
  default     = ""
}

variable "security_group_ids" {
  description = "(Optional) List of VPC Security Groups to associate."
  type        = list(string)
  default     = []
}
