db_parameter_group_name = "demo-rds-db-parameter"
db_parameter_family     = "mysql5.7"
db_parameters = [
  {
    name         = "long_query_time"
    value        = "1"
    apply_method = null
  },
  {
    name         = "slow_query_log"
    value        = "1"
    apply_method = null
  },
  {
    name         = "sql_mode"
    value        = "NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES"
    apply_method = null
  },
  {
    name         = "max_allowed_packet"
    value        = "1677"
    apply_method = null
  },
  {
    name         = "max_connect_errors"
    value        = "999"
    apply_method = null
  },
  {
    name         = "innodb_file_format"
    value        = "Barracuda"
    apply_method = null
  },
  {
    name         = "log_bin_trust_function_creators"
    value        = "1"
    apply_method = null
  },
  {
    name         = "performance_schema"
    value        = "1"
    apply_method = "pending-reboot"
  },
  {
    name         = "max_connections"
    value        = "100"
    apply_method = null
  }
]
