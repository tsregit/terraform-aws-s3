variable "name_bucket" {
  type = string
}

variable "acl" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "aws_id" {
  type = string
}

variable "profile" {
  type    = string
}

variable "environment" {
  type = string
}

variable "name" {
  type = string
}

variable "versioning" {
  type = bool
}

variable "id" {
  type = string
}

variable "expiration_days" {
  type = string
}

variable "transitions" {
  type = list(object({
    days = string,
    storage_class = string,
  }))
}

variable "enabled" {
  type = bool
}

variable "tags" {
  type = map(string)
}

