variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

variable "zone_id" {
    default = "Z067491539R6SKCF2LQ00"
}

variable "domain_name" {
    default = "durgay.shop"
}