locals {
  reader_identifier_name = "${var.instance_identifier}${var.delimiter}reder"
}

module "aurora_cluster_writer_instance" {
  source                     = "git::https://github.com/sanjeet-deshpande/tf_0.12_aws_rds.git//rds_cluster_instance?ref=v0.0.1"
  config_vars                = var.config_vars
  tags                       = var.tags
  delimiter                  = var.delimiter
  cluster_size               = var.cluster_size
  instance_identifier        = local.reader_identifier_name
  cluster_identifier         = data.terraform_remote_state.aurora_cluster.outputs.rds_cluster_id
  db_parameter_group_name    = data.terraform_remote_state.aurora_resources.outputs.rds_db_parameter_group_id
  publicly_accessible        = var.publicly_accessible
  instance_class             = var.instance_class
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
}
