resource "aws_vpc" "main" {
  count                = "${var.vpc_count}"
  cidr_block           = "${element(var.cidr_prefix, count.index)}.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "${var.vpc_name}${count.index}"
  }
}