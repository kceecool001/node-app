variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-central-1"
}

variable "public_key" {}
variable "private_key" {
}
variable "key_name" {

}