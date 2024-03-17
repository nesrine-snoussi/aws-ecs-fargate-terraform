variable "cidr" {
 description = "CIDR block for the VPC"
 type        = string
}

variable "azs" {
 description = "List of availability zones"
 type        = list(string)
}

variable "subnets-ip" {
 description = "List of CIDR blocks for the subnets"
 type        = list(string)
}
