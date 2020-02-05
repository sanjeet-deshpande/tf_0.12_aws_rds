variable "config_vars" {
  type = map(string)
}

variable "tags" {
  type = map(string)
}

variable "delimiter" {

}

variable "security_groups" {
  type = list(string)
}

variable "kms_key_arn" {
}

# see aws_rds_cluster documentation for these variables
variable "database_name" {
}

variable "master_username" {
}

variable "master_password" {
}

variable "backup_retention_period" {
}

variable "preferred_backup_window" {
}

variable "storage_encrypted" {
}

variable "vpc_id" {
}

variable "aurora_cluster_identifier" {
}

