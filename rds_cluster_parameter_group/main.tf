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
    "Name" = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.cluster_parameter_group_name}"
  }
}

resource "aws_rds_cluster_parameter_group" "cluster_parameter_group" {
  name        = "${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.cluster_parameter_group_name}"
  family      = var.cluster_parameter_group_family
  description = "Managed by Terraform - ${data.template_file.name_prefix_tpl.rendered}${var.delimiter}${var.cluster_parameter_group_name}"

  dynamic "parameter" {
    for_each = var.cluster_parameters
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }

  tags = merge(local.default_map_keys, var.tags)
}

