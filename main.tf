module "vpc" {
   source   = "git::https://github.com/chinna3107/tf-module-vpc.git"
    for_each = var.vpc
    cidr = each.value["cidr"]
 # tags = {
 #   name = each.key
 # }
}