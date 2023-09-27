# Kubernetes Deployment Manifest
resource "kubernetes_deployment_v1" "app2" {
  metadata {
    name = "app2-tomcat-deployment"
    labels = {
      app = "app2-tomcat"
    }
  } 
 
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app2-tomcat"
      }
    }

    template {
      metadata {
        labels = {
          app = "app2-tomcat"
        }
      }

      spec {
        container {
          
          image = "tomcat"
          name  = "app2-tomcat"
          port {
            container_port = 80
          }
          }
        }
      }
    }
}

