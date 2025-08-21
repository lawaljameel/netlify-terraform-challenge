variable "netlify_token" {
  description = "Netlify personal access token"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "Name of your Netlify site"
  type        = string
}

variable "repo_path" {
  description = "GitHub repo in the format username/reponame"
  type        = string
}

variable "repo_branch" {
  description = "Branch of your GitHub repo to deploy"
  type        = string
  default     = "main"
}

variable "publish_dir" {
  description = "Directory to publish (build output)"
  type        = string
  default     = "/"
}

variable "build_cmd" {
  description = "Build command (if needed, otherwise empty)"
  type        = string
  default     = ""
}

variable "github_token" {
  description = "GitHub personal access token with repo permissions"
  type        = string
  sensitive   = true
}