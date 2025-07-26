terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    #   version = "~> 3.85.0"
    }
  }

  # Local backend configuration (default)
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5f211b9b-bcb8-434f-9098-8b59dcb748a1"
}