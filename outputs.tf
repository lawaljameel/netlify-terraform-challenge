output "site_id" {
  description = "The ID of the Netlify site"
  value       = netlify_site.main.id
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = netlify_site.main.name
}

output "deploy_url" {
  description = "The deploy URL of the Netlify site"
  value       = netlify_site.main.deploy_url
}

output "custom_domain" {
  description = "The custom domain (if set)"
  value       = netlify_site.main.custom_domain
}

output "deploy_key_id" {
  value       = github_repository_deploy_key.netlify.id
  description = "GitHub deploy key ID"
}