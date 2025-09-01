module "vm_module" {
  source = "git::https://github.com/dikshagupta12345/vm-instance-module.git?ref=main"
  instances = var.instances
  service_account       = var.service_account
}
