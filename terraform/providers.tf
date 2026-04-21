terraform {
  # 1. Versiones requeridas
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Usa la versión 5 o superior (evita cambios de versión mayores imprevistos)
    }
  }

  # 2. El Backend (Muy importante para GitHub Actions)
  backend "s3" {
    bucket       = "karen-static-web" # Debes crearlo manualmente una vez
    key          = "proyectos/web-estatica/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true # Opcional: evita que dos personas apliquen cambios a la vez
    encrypt      = true
  }
}

# 3. Configuración del Proveedor
provider "aws" {
  region = var.aws_region

  # Etiquetas automáticas para todo lo que crees
  default_tags {
    tags = var.common_tags
  }
}
