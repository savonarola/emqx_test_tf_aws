module "eks" {
  source  = "terraform-aws-modules/eks/aws"

  cluster_name    = "main"
  cluster_version = "1.22"

  vpc_id     = aws_vpc.main.id
  subnet_ids = aws_subnet.public_subnet[*].id

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
    attach_cluster_primary_security_group = true
    create_security_group = false
  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-main"

      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 3
      desired_size = 2

      vpc_security_group_ids = [
        aws_security_group.allow_ssh.id
      ]
    }
  }
}
