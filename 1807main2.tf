terraform {
  required_providers {
    tls = {
      source = "hashicorp/tls"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "tls" {}
provider "random" {}

# 1. Generate a unique ID
resource "random_uuid" "unique_id" {}

# 2. Generate an SSH private key
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# 3. Save private key to a file
resource "local_file" "save_private_key" {
  filename = "id_rsa.pem"
  content  = tls_private_key.ssh_key.private_key_pem
  file_permission = "0600"
}
