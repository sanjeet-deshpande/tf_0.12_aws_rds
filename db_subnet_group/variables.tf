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

variable "subnets" {
  description = "A comma separated list of Subnets to use in creating RDS subnet group (must already exist)"
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
}

