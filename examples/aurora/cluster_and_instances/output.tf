output "rds_cluster_id" {
  value = module.aurora_cluster.rds_cluster_id
}

output "instance_endpoints" {
  value = module.aurora_cluster_instances.instance_identifier
}
