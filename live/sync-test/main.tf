terraform {
  backend "s3" {
    bucket = "firefly-dev-engineering-bucket"
    key    = "firefly-sync-test/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "sync_test" {
  source = "../../modules/sync-test"
  name   = "/firefly/sync-test/chima"
}
