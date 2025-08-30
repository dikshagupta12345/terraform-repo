# ----------------
# VPC + Subnets
# ----------------
module "vpc_module" {
  source     = "./vpc-module"
  project_id = var.project_id

  for_each = var.vpcs

  network_name = each.key
  subnets      = each.value.subnets
}
