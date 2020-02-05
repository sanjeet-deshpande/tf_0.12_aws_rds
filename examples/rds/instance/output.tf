output "rds_instance_id" {
  value = module.rds_instances[*].instance_id
}

output "instance_endpoints" {
  value = module.rds_instances[*].instance_endpoint
}
