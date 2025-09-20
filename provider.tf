terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "<=2.5.2"
    }
    random = {
      source = "hashicorp/random"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.80"
    }
  }

  required_version = ">= 1.5.0"
}

