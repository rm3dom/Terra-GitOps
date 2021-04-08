provider "kubernetes" {
  config_path = var.kube_config_path
  config_context = var.kube_config_context
}

provider "helm" {
  kubernetes {
    config_path = var.kube_config_path
    config_context = var.kube_config_context
  }
}

module "busy" {
  source = "../modules/busy"
  say_hello = "Hello Dev"
}