
# Example - Sample AWS RDS DB Instance creation through RDS DB instance terraform module.

## Pre-requisites

1.Please initialse the evironment variables.

```bash
# export AWS_PROFILE = XXXXX
# export AWS_DEFAULT_REGION = XXXXX
# export TF_STATE_S3 = XXXX
```

2.Please update common.tfvars file as per your application.

```bash
1. config_vars - its a map, contains all configuration variables
  
  config_vars = {
      short_env          = "dev"
      aws_region_short   = "uw2"
      product            = "XXXXXXX"
      product_short_name = "xx"
  }
  

2.tags - List of tags, by default only 'Name' tag is available when spinning up your infrastructure.


   tags = {
        "comp:role" = "DEMO"
   }

3. delimiter = "-"                 # String separator used for generating dynamic names for your infrastructure.
4. vpc_id =  "xxxxxx"              # AWS VPC id in which you want to launch your AWS resources like aurora/elasticache

# Decleare 'subnets' either in common.tfvars or in db_subnet_group.tfvars
5. subnets = "xxxxxx,xxxxxxxx"     # AWS VPC subnet id's separated by comma. this is required while creating DB Subnet group

6. security_groups = ["xxxx"]      # Security group name in which you want to spinup your Aurora.

```

3.Create AWS RDS Resources first and then create actual RDS DB instances and its replica

```bash
1. Go to 'resources' directory and run these commands
    make init
    make plan
    make apply
2. Then go to 'instance' dir.
    make init
    make plan
    make apply

```
