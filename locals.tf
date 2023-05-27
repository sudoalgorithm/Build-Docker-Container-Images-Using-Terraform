locals {
  aws_ecr_url = "${data.aws_caller_identity.current.account_id}.sudoalgorithm.ecr.${var.aws_region}.awazonaws.com"
}