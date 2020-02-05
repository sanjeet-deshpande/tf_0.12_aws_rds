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

variable "cluster_parameters" {
  description = "A list of cluster parameter maps to apply"
  type = list(object({
    name         = string,
    value        = string,
    apply_method = string
  }))
  default = []
}

variable "cluster_parameter_group_name" {
  description = "The name of the DB cluster parameter group."
}

variable "cluster_parameter_group_family" {
  description = "The family of the DB cluster parameter group."
  default     = "aurora5.6"
}

