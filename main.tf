# Definition of the digitalocean_app resource named "dev"
resource "digitalocean_app" "dev" {

  # Configuration specific to the resource
  spec {
    # Application name, provided as an external variable
    name = var.spec_name

    # Region where the application will be deployed, provided as an external variable
    region = var.spec_region

    # Configuration of alerts for various events
    alert {
      disabled = false
      rule     = "DEPLOYMENT_FAILED"
    }
    alert {
      disabled = false
      rule     = "DEPLOYMENT_LIVE"
    }
    alert {
      disabled = false
      rule     = "DOMAIN_FAILED"
    }
    alert {
      disabled = false
      rule     = "DOMAIN_LIVE"
    }

    # Configuration of environment variables for the application
    env {
      key   = var.env_key_globa_1
      value = var.env_value_global_1
    }

    # Configuration of ingress rules for the application
    ingress {
      rule {
        component {
          # Component name, provided as an external variable
          name = var.component_micro_1

          # Configuration to preserve the path prefix
          preserve_path_prefix = false
        }
        match {
          path {
            # Path prefix for matching, provided as an external variable
            prefix = var.component_micro_1_prefix
          }
        }
      }
    }

    # Configuration of the application service
    service {
      # Path to the Dockerfile
      dockerfile_path = "Dockerfile"

      # HTTP port the service will listen on, provided as an external variable
      http_port = var.service_http_port_micro_1

      # Number of instances for the service
      instance_count = 1

      # Instance size, provided as an external variable
      instance_size_slug = "basic-xxs"

      # Internal ports of the Docker container (none in this case)
      internal_ports = []

      # Service name, provided as an external variable
      name = var.service_name_micro_1

      # Configuration of alerts for the service
      alert {
        disabled = false
        operator = "GREATER_THAN"
        rule     = "CPU_UTILIZATION"
        value    = 85
        window   = "FIVE_MINUTES"
      }
      alert {
        disabled = false
        operator = "GREATER_THAN"
        rule     = "MEM_UTILIZATION"
        value    = 85
        window   = "FIVE_MINUTES"
      }
      alert {
        disabled = false
        operator = "GREATER_THAN"
        rule     = "RESTART_COUNT"
        value    = 5
        window   = "FIVE_MINUTES"
      }

      # Configuration of environment variables for the service
      env {
        key   = var.service_env_key_micro_1_1
        value = var.service_env_value_micro_1_1
      }

      # Configuration of GitHub integration
      github {
        branch         = var.github_micro_1_branch
        deploy_on_push = var.github_deploy_on_push
        repo           = var.github_micro_1_repo
      }

      # Configuration of health check for the service
      health_check {
        failure_threshold     = 0
        initial_delay_seconds = 0
        period_seconds        = 0
        success_threshold     = 0
        timeout_seconds       = 0
      }
    }
  }
}
