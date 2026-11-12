output "repository_autolink_references_id" {
  description = "Map of id values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.id }
}
output "repository_autolink_references_etag" {
  description = "Map of etag values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.etag }
}
output "repository_autolink_references_is_alphanumeric" {
  description = "Map of is_alphanumeric values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.is_alphanumeric }
}
output "repository_autolink_references_key_prefix" {
  description = "Map of key_prefix values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.key_prefix }
}
output "repository_autolink_references_repository" {
  description = "Map of repository values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.repository }
}
output "repository_autolink_references_target_url_template" {
  description = "Map of target_url_template values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.target_url_template }
}

