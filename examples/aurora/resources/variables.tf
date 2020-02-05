variable "config_vars" {
  type = map(string)
}

variable "tags" {
  type = map(string)
}

variable "delimiter" {
}

variable "db_parameters" {
  type = list(object({
    name         = string,
    value        = string,
    apply_method = string
  }))
}

# see AWS RDS Resources - like DB parameter/cluser Parameter groups documentation for these variables

variable "db_parameter_group_name" {
}

variable "db_parameter_family" {
}

# see aws_rds_cluster documentation for these variables

variable "vpc_id" {
}

variable "subnets" {
}

variable "db_subnet_group_name" {
}

variable "cluster_parameter_group_name" {

}

variable "cluster_parameters" {
  type = list(object({
    name         = string,
    value        = string,
    apply_method = string
  }))
}