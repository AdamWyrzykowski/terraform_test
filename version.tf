# Jest to plik gdzie jest przechowywana informacja o wersji naszego terraforma potrzebna do uruchamienia tego kodu.
# Jest tez tu informacja o naszych potrzebnych providerach i ich wersji.

terraform {
  required_version = ">= 1.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.37.0"
    }
  }

  cloud {
    organization = "szkolenia_cloud"
    hostname = "app.terraform.io" # For Terraform cloud is app.terraform.io for Terraform Enterprise is terraform.yourcompany.com
    workspaces {
      name = "tf-cloud-start-example-digitalocean" # change this to your workspace name after when you create it.
    }
  }
}
