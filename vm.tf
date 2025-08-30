module "vm_module" {
  source = "git::https://github.com/dikshagupta12345/vm-module.git?ref=main"

  for_each = var.instances

  project_id    = each.value.project_id
  instance_name = each.value.instance_name
  machine_type  = each.value.machine_type
  zone          = each.value.zone
  image         = each.value.image
  network       = each.value.network
  subnetwork    = each.value.subnetwork
  external_ip   = each.value.external_ip
  sa_name       = var.sa_name
}
