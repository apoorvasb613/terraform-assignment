resource "aws_eks_cluster" "eks_cluster" {

  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = []
}
