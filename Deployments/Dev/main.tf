module "kubernetes_network_creation" {
  source = "../../tfmodules/kuberneties/Networking"
  vpc_cidr_block          = var.vpc_cidr_block
  vpc_instance_tenancy    = var.vpc_instance_tenancy
  vpc_enable_dns_support  = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames = var.vpc_enable_dns_hostnames
  vpc_name = var.vpc_name
}