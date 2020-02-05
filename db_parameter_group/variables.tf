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

variable "db_parameters" {
  description = "A list of db parameter maps to apply"
  type = list(object({
    name         = string,
    value        = string,
    apply_method = string
  }))
  default = []
}

variable "db_parameter_group_name" {
  description = "DB Parameter Group Name"
}

variable "db_parameter_family" {
  description = "The family of the DB parameter group."
  default     = "aurora5.6"
}
