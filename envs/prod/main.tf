terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.4"
    }
  }
}

provider "kubernetes" {
  config_path    = "C:/Users/suchi/.kube/config"
  config_context = "docker-desktop"
}

module "hello_app" {
  source = "../../modules/hello-app"

  namespace = "prod"
  image_tag = "v2"
  replicas  = 3
  port      = 8090
}