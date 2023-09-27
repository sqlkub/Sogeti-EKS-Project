# Kubernetes Service Manifest (Type: Node Port Service)
resource "kubernetes_service_v1" "app3_np_service" {
  metadata {
    name = "app3-apache-nodeport-service"
    namespace = "fp-ns-app1"        
    annotations = {
      "alb.ingress.kubernetes.io/healthcheck-path" = "/app3/index.html"
    }    
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.app3.spec.0.selector.0.match_labels.app
    }
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }
    type = "NodePort"
  }
}