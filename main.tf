resource "github_repository_autolink_reference" "repository_autolink_references" {
  for_each = var.repository_autolink_references

  key_prefix          = each.value.key_prefix
  repository          = each.value.repository
  target_url_template = each.value.target_url_template
  is_alphanumeric     = each.value.is_alphanumeric
}

