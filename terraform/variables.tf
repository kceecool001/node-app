variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "public_key" {
  description = "Public SSH key"
  type        = string
}

variable "private_key" {
  description = "Private SSH key"
  type        = string
  sensitive   = true
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}