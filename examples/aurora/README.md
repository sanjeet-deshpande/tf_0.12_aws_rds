
# Example - Sample AWS Aurora Cluster creation through Aurora Modules

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
      product            = "xxxxxx"
      product_short_name = "ab"
      product_service    = "demo"
  }
  

2.tags - List of tags, by default only 'Name' tag is available when spinning up your infrastructure.


   tags = {
        "comp:role" = "DEMO"
   }

3. delimiter = "-"                 # String separator used for generating dynamic names for your infrastructure.
4. vpc_id =  "xxxxxx"              # AWS VPC id in which you want to launch your AWS resources like aurora/elasticache
5. subnets = "xxxxxx,xxxxxxxx"     # AWS VPC subnet id's separated by comma. this is required while creating DB Subnet group
6. security_groups = ["xxxx"]      # Security group name in which you want to spinup your Aurora.
7. kms_key_arn = "xxxxx"           # kms key arn while cluster encryption

```

3.Create Aurora Resources first and then actual Aurora cluster & instances.

```bash
1. Go to 'resources' directory and run these commands
    make init
    make plan
    make apply
2. Then go to 'cluster_and_instances' dir.
        make init
    make plan
    make apply

```
