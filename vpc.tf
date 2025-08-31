module "vpc_networks" {
  for_each = var.networks
  source   = "git::https://github.com/dikshagupta12345/vpc-module.git?ref=main"

  project_id = each.value.project_id
  region     = each.value.region
  subnets    = each.value.subnets
  vpc_name   = each.key   # 👈 ensures uniqueness, even if region is same
}

