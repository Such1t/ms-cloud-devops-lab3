variable "namespace" {
  type = string
}

variable "image_tag" {
  type    = string
  default = "v2"
}

variable "replicas" {
  type    = number
  default = 3
}

variable "port" {
  type = number
}