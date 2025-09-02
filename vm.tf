module "vm_module" {
  source = "git::https://github.com/dikshagupta12345/vm-instance-module.git?ref=v1.0.0"
  instances = var.instances
  service_account       = var.service_account
}
