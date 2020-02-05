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

variable "db_option_group_name" {
  description = "Aurora DB Option Group Name"
}

variable "db_engine_name" {
  description = "DB Engine Name"
  default     = "aurora"
}

variable "db_engine_version" {
  description = "DB Engine version"
  default     = "5.6"
}

