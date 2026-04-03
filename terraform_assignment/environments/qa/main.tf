
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0"

  name = "qa-vpc"
  cidr = "10.0.0.0/16"

  azs = ["us-east-2a", "us-east-2b"]

  public_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  enable_nat_gateway = false
  map_public_ip_on_launch = true 
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.33.1" 

  cluster_name    = "qa-eks-cluster"
  cluster_version = "1.31"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    dev = {
      instance_types = ["t3.micro"]

      min_size     = 1
      max_size     = 2
      desired_size = 2
    }
  }
}
