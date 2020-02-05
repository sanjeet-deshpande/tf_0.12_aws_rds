

data "terraform_remote_state" "rds_resources" {
  backend = "s3"

  config = {
    bucket = "sg-terraform-state-testing"
    key    = "rds/resources.tfstate"
  }
}
