output "repository_autolink_references_id" {
  description = "Map of id values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_autolink_references_etag" {
  description = "Map of etag values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "repository_autolink_references_is_alphanumeric" {
  description = "Map of is_alphanumeric values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.is_alphanumeric if v.is_alphanumeric != null }
}
output "repository_autolink_references_key_prefix" {
  description = "Map of key_prefix values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.key_prefix if v.key_prefix != null && length(v.key_prefix) > 0 }
}
output "repository_autolink_references_repository" {
  description = "Map of repository values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_autolink_references_target_url_template" {
  description = "Map of target_url_template values across all repository_autolink_references, keyed the same as var.repository_autolink_references"
  value       = { for k, v in github_repository_autolink_reference.repository_autolink_references : k => v.target_url_template if v.target_url_template != null && length(v.target_url_template) > 0 }
}

