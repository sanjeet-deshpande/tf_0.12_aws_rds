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


variable "availability_zone" {
}

variable "cluster_size" {
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
