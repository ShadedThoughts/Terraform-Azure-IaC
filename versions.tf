terraform {
  required_version = ">= 1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = var.main_rg
    storage_account_name = var.backend_sa
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}