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
    "Name" = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.db_option_group_name}"
  }
}

resource "aws_db_option_group" "db_option_group" {
  name                     = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.db_option_group_name}"
  option_group_description = "Managed by Terraform - ${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.db_option_group_name}"
  engine_name              = var.db_engine_name
  major_engine_version     = var.db_engine_version
  tags                     = merge(local.default_map_keys, var.tags)
}

