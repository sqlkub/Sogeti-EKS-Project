# Kubernetes Deployment Manifest
resource "kubernetes_deployment_v1" "app1" {
  metadata {
    name = "app1-nginx-deployment"
    labels = {
      app = "app1-nginx"
    }
  } 
 
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app1-nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "app1-nginx"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "app1-nginx"
          port {
            container_port = 80
          }
          }
        }
      }
    }
}

