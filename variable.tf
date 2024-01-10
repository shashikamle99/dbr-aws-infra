# variable "client_id" {
#   default = local.client_id
# }
# variable "client_secret" {
#   default = local.client_secret
# }
# variable "databricks_account_id" {
#   default = local.databricks_account_id
# }

variable "tags" {
  default = {}
}

variable "cidr_block" {
  default = "10.4.0.0/16"
}

variable "region" {
  default = "us-east-2"
}

resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "demo${random_string.naming.result}"
}