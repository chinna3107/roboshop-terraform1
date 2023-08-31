module "component" {
   source   = "git::https://github.com/chinna3107/tf-module-vpc.git"
    for_each = var.vpc
    cidr = each.value["cidr"]
    subnets = each.value["subnets"]
 # tags = {
 #   name = each.key
 # }
}