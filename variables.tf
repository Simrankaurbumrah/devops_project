variable "instance_type"{
    type=string
}
variable "ami_instance" {
    type= string
}

variable env {
    type = string

}

variable "bucket_name" {
    type= string
}
variable "root" {
    type = number
}
variable "instance_count" {
    type=number
}
variable hash_key {
    type=string
}