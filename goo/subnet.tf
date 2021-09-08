resource "aws_subnet" "private_subnet" {
  count = "${var.subnet_count * var.vpc_count}"
  vpc_id            = "${element(aws_vpc.main.*.id, count.index % var.vpc_count)}"
  cidr_block        = "${element(var.cidr_prefix, count.index)}.${count.index}.0/24"
  availability_zone = "${element(data.aws_availability_zones.all.names, count.index)}"

  tags {
    Name = "${var.vpc_name}-${element(var.availability_zone, count.index)}-${count.index}"
  }
}