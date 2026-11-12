variable "name" {
  type = string
}

resource "aws_ssm_parameter" "this" {
  name  = var.name
  type  = "String"
  value = "firefly-sync-test"
}
