# Configuration for DigitalOcean App Deployment

# Application Specification
spec_name   = "terraform-apps-digitalocean" # Name of the application
spec_region = "fra"                         # Region where the application will be deployed

# Environment Variables for the Application
env_key_globa_1    = "ENV"        # Global environment variable key
env_value_global_1 = "production" # Global environment variable value

# Ingress Configuration for the Application
component_micro_1        = "danieljsaldana" # Name of the application component
component_micro_1_prefix = "/"              # Path prefix for the application component

# Service Configuration for the Application
service_http_port_micro_1          = "3000"           # HTTP port for the service
service_instance_count_micro_1     = "1"              # Number of instances for the service
service_instance_size_slug_micro_1 = "basic-xxs"      # Size of the service instances
service_name_micro_1               = "danieljsaldana" # Name of the service

# Environment Variables for the Service
service_env_key_micro_1_1   = "log"   # Service environment variable key 1
service_env_value_micro_1_1 = "error" # Service environment variable value 1

# GitHub Integration Configuration for the Service
github_micro_1_branch = "production"                              # GitHub branch to deploy from
github_deploy_on_push = "false"                                   # Automatic deployment on push (true/false)
github_micro_1_repo   = "danieljsaldana/danieljsaldana-portfolio" # GitHub repository URL
