provider "netlify" {
  token = var.netlify_token
}

provider "github" {
  token = var.github_token
  owner = "lawaljameel"
}