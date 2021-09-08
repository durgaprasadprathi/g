
variable "vpc_count" {
    type = "number"
    description = "The number of vpc's we need"
    default = 1
}

variable "vpc_name" {
    type = "string"
    description = "The name of the Vpc" 
    default = ""
}

variable "cidr_prefix"{
  type = "list"
  description = "The first 16 bits of the desired cidr block/s. Note: The number of elements in the list should not be less than the specified count of VPCs."
  default = ["172.16", "10.0", "143.14", "100.10"]
}

variable "subnet_count" {
    type = "number"
    description = "The number of subnets's we need"
    default = 1
}

variable "availability_zone" {
    
}