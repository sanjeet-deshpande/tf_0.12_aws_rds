

data "terraform_remote_state" "aurora_resources" {
  backend = "s3"

  config = {
    bucket = "terraform-state-testing"
    key    = "testing/aurora_resources.tfstate"
  }
}

data "terraform_remote_state" "aurora_cluster" {
  backend = "s3"
  config = {
    bucket = "terraform-state-testing"
    key    = "testing/aurora_cluster.tfstate"
  }
}
