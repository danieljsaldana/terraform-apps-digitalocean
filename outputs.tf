# Output: Retrieve the ID of the created digitalocean_app resource
output "app_id" {
  # Description of the output, explaining its purpose
  description = "ID of the created DigitalOcean App resource."

  # Value attribute specifies the value to be exposed as an output
  value = digitalocean_app.dev.id
}

# Output: Retrieve information about the default ingress rules
output "default_ingress" {
  # Description of the output, explaining its purpose
  description = "Default ingress rules for the DigitalOcean App."

  # Value attribute specifies the value to be exposed as an output
  # Note: This assumes 'default_ingress' is a valid attribute within the digitalocean_app.dev structure.
  # However, since 'default_ingress' is not a standard attribute, you may need to adjust this based on your actual data structure.
  value = digitalocean_app.dev.default_ingress
}

# Output: Retrieve the live URL of the created digitalocean_app resource
output "live_url" {
  # Description of the output, explaining its purpose
  description = "Live URL of the created DigitalOcean App resource."

  # Value attribute specifies the value to be exposed as an output
  value = digitalocean_app.dev.live_url
}
