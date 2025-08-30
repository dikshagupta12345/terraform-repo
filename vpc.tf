# ----------------
# VPC + Subnets
# ----------------
module "vpc_module" {
  source     = "git::https://github.com/dikshagupta12345/vpc-module.git?ref=main"
  project_id = var.project_id

  for_each = var.vpcs

  network_name = each.key
  subnets      = each.value.subnets
}
