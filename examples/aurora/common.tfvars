config_vars = {
  short_env          = "dev"
  aws_region_short   = "uw2"
  product            = "xxxxxx"
  product_short_name = "ab"
  product_service    = "demo"
}

tags = {
  "comp:role" = "DEMO"
}

delimiter = "-"

vpc_id = "vpc-xxxxx"

subnets = "subnet-xxxxxx,subnet-xxxxx,subnet-xxxxx"

security_groups = ["sg-xxxxxxx"]

kms_key_arn = "arn:aws:kms:us-west-2:xxxxxxxxxx:key/xxxxxxxxx"
