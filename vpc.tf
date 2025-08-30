module "vpc_networks" {
  for_each = var.networks
  source   = "git::https://github.com/your-org/network-module.git?ref=main"

  project_id = each.value.project_id
  region     = each.value.region
  subnets    = each.value.subnets
}
