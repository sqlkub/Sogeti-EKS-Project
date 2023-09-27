# Kubernetes Deployment Manifest
resource "kubernetes_deployment_v1" "app3" {
  metadata {
    name = "app3-apache-deployment"
    labels = {
      app = "app3-apache"
    }
  } 
 
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app3-apache"
      }
    }

    template {
      metadata {
        labels = {
          app = "app3-apache"
        }
      }

      spec {
        container {
          image = "httpd"
          name  = "app3-apache"
          port {
            container_port = 80
          }
          }
        }
      }
    }
}

