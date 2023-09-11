module "component" {
   source   = "git::https://github.com/chinna3107/tf-module-basic-test.git"
    for_each = var.vpc
    cidr = each.value["cidr"]
    subnets = each.value["subnets"]
 # tags = {
 #   name = each.key
 # }
}