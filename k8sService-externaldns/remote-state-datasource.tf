/*

# Terraform Remote State Datasource - Remote Backend AWS S3
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "dev-aws-eks"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = "eu-west-1"
  }
}
*/

data "terraform_remote_state" "eks" {
  backend = "local"
  config = {
    path = "../eks/terraform.tfstate"
   }
}