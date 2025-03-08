
locals {
    domain_name  = "durgay.shop"
    zone_id = "Z067491539R6SKCF2LQ00"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
}
