variable "aurora_cluster_name" {
}

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

variable "iam_role_arn" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the RDS Cluster."
  type        = list(string)
  default     = []
}

variable "availability_zones" {
  description = "A comma separated list of Availability Zones in the Region."
  type        = list(string)
  default     = ["us-east-1b,us-east-1c"]
}

variable "aws_security_groups" {
  description = "List of VPC security groups to associate with the Cluster."
  type        = list(string)
  default     = []
}

variable "db_port" {
  description = "The port on which the DB accepts connections."
  default     = 3306
}

variable "instance_class" {
  description = "Instance class to use when creating RDS cluster - db.t2.small/db.t2.medium/db.r3.large/db.r3.xlarge/db.r3.2xlarge/db.r3.4xlarge/db.r3.8xlarge"
  default     = "db.t2.medium"
}

variable "publicly_accessible" {
  description = "Should the instance get a public IP address?"
  default     = "false"
}

# see aws_rds_cluster documentation for these variables
variable "database_name" {
  description = "The name for your database of up to 8 alpha-numeric characters."
}

variable "master_username" {
  description = "Username for the master DB user."
}

variable "master_password" {
  description = "Password for the master DB user."
}

variable "backup_retention_period" {
  description = "The backup retention period"
  default     = "30"
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created"
  default     = "01:00-03:00"
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  default     = true
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  default     = false
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted."
  default     = false
}

variable "rds_cluster_engine" {
  description = "The name of the database engine to be used for this DB cluster."
  default     = "aurora"
}

variable "engine_mode" {
  description = "Optional) The database engine mode. Valid values: global, multimaster, parallelquery, provisioned, serverless. Defaults to: provisioned. See the RDS User Guide for limitations when using serverless."
  default     = "provisioned"
}

variable "rds_cluster_engine_version" {
  description = "The database engine version."
  default     = "5.6.10a"
}

variable "db_subnet_group_name" {
  description = "A DB subnet group to associate with this DB instance."
}

variable "db_cluster_parameter_group_name" {
  description = "A cluster parameter group to associate with the cluster."
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key"
}

variable "snapshot_identifier" {
  description = " (Optional) Specifies whether or not to create this cluster from a snapshot. you can use name or ARN when specifying a DB cluster snapshot."
  default     = ""
}

variable "deletion_protection" {
  description = " (Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  default     = "false"
}

variable "backtrack_window" {
  description = "(Optional) The target backtrack window, in seconds. Only available for aurora engine currently."
  default     = "0"
}

variable "enabled_cloudwatch_logs_exports" {
  description = " (Optional) List of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: audit, error, general, slowquery."
  type        = list(string)
  default     = ["audit", "error", "general", "slowquery"]
}

variable "source_region" {
  description = "(Optional). The source region for an encrypted replica DB cluster"
  default     = ""
}

variable "replication_source_identifier" {
  description = "(Optional). ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica."
  default     = ""
}

