# Terraform Configuration for DigitalOcean Provider

# Specify the required providers and versions
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.30"
    }
  }
}

# Configure the DigitalOcean provider
provider "digitalocean" {
  # DigitalOcean API token for authentication, provided as a variable
  token = var.do_token
}
