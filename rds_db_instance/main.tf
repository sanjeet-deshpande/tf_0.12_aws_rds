data "template_file" "name_prefix_tpl" {
  template = "$${aws_region_short}$${short_env}$${product_short_name}$${product_service}"

  vars = {
    aws_region_short   = lookup(var.config_vars, "aws_region_short", "")
    short_env          = lookup(var.config_vars, "short_env", "")
    product_short_name = lookup(var.config_vars, "product_short_name", "")
    product_service    = lookup(var.config_vars, "product_service", "")
  }
}

locals {
  default_map_keys = {
    "Name" = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.instance_identifier}"
  }
}


resource "aws_db_instance" "db_instance" {
  identifier                      = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.instance_identifier}"
  allocated_storage               = var.allocated_storage
  name                            = var.database_name
  username                        = var.master_username
  password                        = var.master_password
  apply_immediately               = var.apply_immediately
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  availability_zone               = var.availability_zone
  backup_retention_period         = var.backup_retention_period
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot
  deletion_protection             = var.deletion_protection
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  engine                          = var.engine
  engine_version                  = var.engine_version
  instance_class                  = var.instance_class
  backup_window                   = var.backup_window
  #maintenance_window                    = var.maintenance_window
  monitoring_interval  = var.monitoring_interval
  monitoring_role_arn  = var.monitoring_role_arn
  multi_az             = var.multi_az
  db_subnet_group_name = var.db_subnet_group_name
  option_group_name    = var.option_group_name
  parameter_group_name = var.parameter_group_name
  port                 = var.port
  publicly_accessible  = var.publicly_accessible
  skip_final_snapshot  = var.skip_final_snapshot
  storage_encrypted    = var.storage_encrypted
  replicate_source_db  = var.replicate_source_db
  #storage_type                          = var.storage_type
  #performance_insights_enabled          = var.performance_insights_enabled
  #performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  #performance_insights_retention_period = var.performance_insights_retention_period
  tags                   = merge(local.default_map_keys, var.tags)
  vpc_security_group_ids = var.security_group_ids
}
