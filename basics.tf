# Terraform configuration:
terraform {
  required_version = "~> 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.66.0"
    }
  }
}

# Providers
provider "azurerm" {
  features {}
}

# Resources
resource "azurerm_resource_group" "first-rg" {
  name     = "rg-terraforming"
  location = "centralus"
}
