# Terraform Variables for DigitalOcean App Deployment

# DigitalOcean API Token
variable "do_token" {
  description = "DigitalOcean API token used for authentication."
}

# Application Specification
variable "spec_name" {
  description = "Name of the application."
}

variable "spec_region" {
  description = "Region where the application will be deployed."
}

# Global Environment Variables for the Application
variable "env_key_globa_1" {
  description = "Key for the global environment variable."
}

variable "env_value_global_1" {
  description = "Value for the global environment variable."
}

# Ingress Configuration for the Application
variable "component_micro_1" {
  description = "Name of the application component for ingress configuration."
}

variable "component_micro_1_prefix" {
  description = "Path prefix for the application component in the ingress configuration."
}

# Service Configuration for the Application
variable "service_http_port_micro_1" {
  description = "HTTP port on which the service will listen."
}

variable "service_instance_count_micro_1" {
  description = "Number of instances for the service."
}

variable "service_instance_size_slug_micro_1" {
  description = "Size of the instances for the service."
}

variable "service_name_micro_1" {
  description = "Name of the service in the application."
}

# Environment Variables for the Service
variable "service_env_key_micro_1_1" {
  description = "Key for the first environment variable of the service."
}

variable "service_env_value_micro_1_1" {
  description = "Value for the first environment variable of the service."
}

# GitHub Integration Configuration for the Service
variable "github_micro_1_branch" {
  description = "GitHub branch from which the service will be deployed."
}

variable "github_deploy_on_push" {
  description = "Flag indicating whether automatic deployment should occur on push to the GitHub repository."
}

variable "github_micro_1_repo" {
  description = "GitHub repository URL for the service."
}