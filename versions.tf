terraform {
  cloud {
    organization = "terraform-6-weeks-challenge"

    workspaces {
      name = "prediction-terraform-game"
    }
  }

  required_providers {
    netlify = {
      source  = "AegirHealth/netlify"
      version = "~> 0.6"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}
