terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"

    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6f89d107-0df7-4bf9-9a60-43a792310639"
}

resource "azurerm_resource_group" "rg1" {
  name     = "RH_Hitesh_1"
  location = "East US"
}

resource "azurerm_resource_group" "rg2" {
  name     = "RH_Hitesh_2"
  location = "East US"
}

resource "azurerm_storage_account" "stg" {
  name                     = "behenchodstorage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}