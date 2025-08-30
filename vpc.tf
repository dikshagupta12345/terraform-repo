module "vpc_module" {
  source     = "git::https://github.com/dikshagupta12345/vpc-module.git?ref=main"
  project_id = "innate-bucksaw-464410-e8"

  vpcs = {
    vpc1 = {}
    vpc2 = {}
  }

  subnets = [
    { name = "subnet1", cidr = "10.1.0.0/24", region = "us-central1", vpc = "vpc1" },
    { name = "subnet2", cidr = "10.2.0.0/24", region = "us-central1", vpc = "vpc1" },
    { name = "subnet3", cidr = "10.3.0.0/24", region = "us-east1", vpc = "vpc2" },
  ]
}
