module "aurora_db_parameter_group" {
  source                  = "git::https://github.com/sanjeet-deshpande//tf_0.12_aws_rds.git//db_parameter_group?ref=v0.0.1"
  config_vars             = var.config_vars
  tags                    = var.tags
  delimiter               = var.delimiter
  db_parameter_group_name = var.db_parameter_group_name
  db_parameter_family     = var.db_parameter_family
  db_parameters           = var.db_parameters
}

module "aurora_db_subnet_group" {
  source               = "git::https://github.com/sanjeet-deshpande//tf_0.12_aws_rds.git//db_subnet_group?ref=v0.0.1"
  config_vars          = var.config_vars
  tags                 = var.tags
  delimiter            = var.delimiter
  subnets              = var.subnets
  db_subnet_group_name = var.db_subnet_group_name
}

module "aurora_db_option_group" {
  #source               = "../../../modules/rds/db_option_group"
  source               = "git::https://github.com/sanjeet-deshpande//tf_0.12_aws_rds.git//db_option_group?ref=v0.0.1"
  config_vars          = var.config_vars
  tags                 = var.tags
  db_engine_name       = var.db_engine_name
  db_engine_version    = var.db_engine_version
  db_option_group_name = var.db_option_group_name
}
