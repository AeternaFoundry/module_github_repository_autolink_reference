variable "repository_autolink_references" {
  description = <<EOT
Map of repository_autolink_references, attributes below
Required:
    - key_prefix
    - repository
    - target_url_template
Optional:
    - is_alphanumeric
EOT

  type = map(object({
    key_prefix          = string
    repository          = string
    target_url_template = string
    is_alphanumeric     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_autolink_references : (
        can(regex("^[a-zA-Z0-9.=+:/#_-]*[a-zA-Z.=+:/#_-]$", v.key_prefix))
      )
    ])
    error_message = "must only contain letters, numbers, or .-_+=:/# and must not end with a number"
  }
  validation {
    condition = alltrue([
      for k, v in var.repository_autolink_references : (
        can(regex("^http[s]?:\\/\\/[a-z0-9-.]*(:[0-9]+)?\\/.*?<num>.*?$", v.target_url_template))
      )
    ])
    error_message = "must be a valid URL and contain <num> token"
  }
}

