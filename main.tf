terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.29.4"
    }
  }
}
variable "linode-api-key" {}
variable "root-password" {}

provider "linode" {
  # Configuration options
  token = var.linode-api-key
}

resource "linode_instance" "test_instance1" {
  label     = "test_instance1"
  image     = "linode/ubuntu20.04"
  region    = "us-central"
  type      = "g6-standard-1"
  root_pass = "var.root-password"
}

resource "linode_instance" "test_instance2" {
  label     = "test_instance2"
  image     = "linode/ubuntu20.04"
  region    = "us-central"
  type      = "g6-standard-1"
  root_pass = "var.root-password"
}

resource "linode_instance" "logging_instance" {
  label     = "logging_instance"
  image     = "linode/ubuntu20.04"
  region    = "us-central"
  type      = "g6-standard-1"
  root_pass = "var.root-password"
}
resource "linode_instance" "monitoring_instance" {
  label     = "monitoring_instance"
  image     = "linode/ubuntu20.04"
  region    = "us-central"
  type      = "g6-standard-1"
  root_pass = "var.root-password"
}

resource "linode_instance" "parachain_instance" {
  label     = "parachain_instance"
  image     = "linode/ubuntu20.04"
  region    = "us-central"
  type      = "g6-standard-1"
  root_pass = "var.root-password"
}
