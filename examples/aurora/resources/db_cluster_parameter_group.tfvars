cluster_parameter_group_name = "sample-cluster-parameter-group"

cluster_parameters = [
  {
    name         = "collation_server"
    value        = "utf8_general_ci"
    apply_method = null
  },
  {
    name         = "character_set_server"
    value        = "utf8"
    apply_method = "immediate"
  },
  {
    name         = "binlog_format"
    value        = "STATEMENT"
    apply_method = "pending-reboot"
  }

]
