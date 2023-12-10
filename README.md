# Implementación de la Aplicación en DigitalOcean con Terraform

Este repositorio contiene configuraciones de Terraform para implementar una aplicación web en DigitalOcean utilizando el servicio DigitalOcean App. La implementación incluye la configuración de una aplicación con configuraciones específicas, variables de entorno y la integración con GitHub para implementación continua.

## Configuración de la Aplicación

### Resumen

Se define el recurso `digitalocean_app` con el nombre "dev" en el archivo `main.tf`. Este recurso incluye varias configuraciones para implementar la aplicación, como:

- **Nombre y Región**: El nombre de la aplicación y la región de implementación se proporcionan como variables externas.
- **Alertas**: Configuraciones para diferentes reglas de alerta, incluyendo alertas relacionadas con implementación y dominio.
- **Variables de Entorno**: Variables de entorno globales para la aplicación.
- **Reglas de Ingreso**: Configuración para manejar el tráfico entrante al componente de la aplicación.
- **Configuración del Servicio**: Ruta del Dockerfile, puerto HTTP, cantidad de instancias, tamaño y varias alertas para el servicio de la aplicación.
- **Integración con GitHub**: Integración con GitHub para implementación automática al realizar `push` en una rama específica.
- **Verificación de Estado**: Configuración para verificar el estado del servicio de la aplicación.

### Variables Externas

Se utilizan variables externas para proporcionar flexibilidad y personalización a la implementación. Los valores de estas variables se especifican en el archivo `variables.tf`.

## Configuración de Terraform

El archivo `main.tf` también incluye la configuración de Terraform para el proveedor de DigitalOcean. Se especifica la versión requerida del proveedor y se proporciona el token de la API de DigitalOcean como una variable externa.

## Variables de Terraform

El archivo `variables.tf` define las variables externas utilizadas en la configuración de Terraform. Estas variables incluyen detalles como el token de la API de DigitalOcean, el nombre de la aplicación, la región, la información del repositorio de GitHub y varias configuraciones para la aplicación y el servicio.

## Resultados

El archivo `outputs.tf` especifica resultados para recuperar información después de la implementación. Los resultados incluyen el ID del recurso de DigitalOcean App creado, las reglas de ingreso predeterminadas y la URL en vivo de la aplicación implementada.

## Cómo Utilizar

1. Clona este repositorio.
2. Modifica los valores en el archivo `terraform.tfvars` con tu configuración específica.
3. Ejecuta `terraform init` para inicializar la configuración de Terraform.
4. Ejecuta `terraform apply` para aplicar la configuración e implementar la aplicación.
5. Después de la implementación, los resultados proporcionarán información sobre el recurso creado.

Siéntete libre de personalizar los archivos de configuración y las variables según los requisitos de tu aplicación. Para obtener más información sobre los recursos de DigitalOcean App y Terraform, consulta la [documentación de DigitalOcean](https://docs.digitalocean.com/products/app-platform/).
