data "aws_vpc" "vpc" {
  id = var.vpc_id
}

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
    "Name" = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.aurora_cluster_name}"
  }
}

resource "aws_rds_cluster" "aurora" {
  cluster_identifier      = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.aurora_cluster_name}"
  database_name           = var.database_name
  master_username         = var.master_username
  master_password         = var.master_password
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  vpc_security_group_ids  = var.aws_security_groups
  storage_encrypted       = var.storage_encrypted

  kms_key_id = var.kms_key_id
  iam_roles  = var.iam_role_arn

  apply_immediately               = var.apply_immediately
  db_subnet_group_name            = var.db_subnet_group_name
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name
  final_snapshot_identifier       = "final-snapshot-${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.aurora_cluster_name}"
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  deletion_protection = var.deletion_protection
  backtrack_window    = var.backtrack_window
  skip_final_snapshot = var.skip_final_snapshot
  engine              = var.rds_cluster_engine
  engine_mode         = var.engine_mode
  engine_version      = var.rds_cluster_engine_version
  snapshot_identifier = var.snapshot_identifier

  replication_source_identifier = var.replication_source_identifier
  source_region                 = var.source_region

  lifecycle {
    prevent_destroy = "false" # https://www.terraform.io/docs/configuration/resources.html#prevent_destroy
  }

  tags = merge(local.default_map_keys, var.tags)
}

