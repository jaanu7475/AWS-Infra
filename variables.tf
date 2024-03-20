variable "regionname" {}
variable "instancename" {}
variable "vpcname" {}
variable "bucket_prefix" {}
variable "sg-ports" {
    type = list(number)
}
