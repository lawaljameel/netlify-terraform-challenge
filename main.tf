# Deploy key for GitHub repo
resource "netlify_deploy_key" "key" {}

# Add Netlify deploy key into GitHub repo automatically
resource "github_repository_deploy_key" "netlify" {
  title      = "netlify-deploy-key"
  repository = "netlify-terraform-challenge"
  key        = netlify_deploy_key.key.public_key
  read_only  = false
}

# Random suffix to make site name unique
resource "random_pet" "suffix" {
  length = 2
}

# Netlify site resource
resource "netlify_site" "main" {
  name = "${var.site_name}-${random_pet.suffix.id}"

  repo {
    provider      = "github"
    repo_path     = var.repo_path
    repo_branch   = var.repo_branch
    deploy_key_id = netlify_deploy_key.key.id
    publish_dir   = var.publish_dir
    command       = var.build_cmd
  }
}
