# ----------------
# VM Instances
# ----------------

module "vm_module" {
  source     = "git::https://github.com/dikshagupta12345/vm-instance-module.git?ref=main"  
  project_id = var.project_id

  for_each     = var.instances

  instance_name = each.key
  machine_type  = each.value.machine_type
  zone          = each.value.zone
  image         = each.value.image
  network       = each.value.network
  subnetwork    = each.value.subnetwork
  external_ip   = each.value.external_ip
}
