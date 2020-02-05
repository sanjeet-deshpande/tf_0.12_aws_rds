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


resource "aws_rds_cluster_instance" "cluster_instance" {
  count      = var.cluster_size
  identifier = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.instance_identifier}${var.delimiter}${count.index}"

  cluster_identifier              = var.cluster_identifier
  availability_zone               = var.availability_zone
  instance_class                  = var.instance_class
  publicly_accessible             = var.publicly_accessible
  db_parameter_group_name         = var.db_parameter_group_name
  promotion_tier                  = var.promotion_tier
  engine                          = var.engine
  engine_version                  = var.engine_version
  monitoring_role_arn             = var.monitoring_role_arn
  monitoring_interval             = var.monitoring_interval
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  performance_insights_enabled    = var.performance_insights_enabled
  performance_insights_kms_key_id = var.performance_insights_kms_key_id
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot
  tags                            = merge(local.default_map_keys, var.tags)
}

