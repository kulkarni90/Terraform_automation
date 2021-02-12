

variable "instance_type" {
  description = "Amazon EC2 Instance free tier"
  type        = string
  default     = ""
}


variable "ami" {
  description = "Ubuntu 20.04 Image Name for EC2 Instances"
  type        = string
  default     = ""
}