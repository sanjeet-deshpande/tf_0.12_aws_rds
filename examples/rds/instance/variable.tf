variable "config_vars" {
  type = map(string)
}

variable "tags" {
  type = map(string)
}

variable "delimiter" {
}

variable "backup_retention_period" {
}

variable "backup_window" {
}

variable "vpc_id" {
}

# RDS Instance module variables
variable "publicly_accessible" {

}

variable "auto_minor_version_upgrade" {

}

variable "instance_class" {

}

variable "instance_identifier" {

}

variable "apply_immediately" {
}

variable "security_group_ids" {
}
