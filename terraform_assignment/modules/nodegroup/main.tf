resource "aws_eks_node_group" "nodes" {

  cluster_name    = var.cluster_name
  node_group_name = "dev-node-group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {

    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  instance_types = ["t3.micro"]

}
