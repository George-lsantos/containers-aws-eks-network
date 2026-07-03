variable "project_name" {
<<<<<<< HEAD
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type    = string
  default = "CIDR principal da VPC"
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "Lista de CIDRs adicionais da VPC"
  default     = []
}

variable "public_subnets" {
  description = "Lista de CIDRs das subnets públicas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de CIDRs das subnets private"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
=======
    type = string
}

variable "region" {
    type = string
}

variable "vpc_cidr" {
    type = string
    default = "CIDR principal da VPC"
}

variable "vpc_additional_cidrs" {
    type = list(string)
    description = "Lista de CIDRs adicionais da VPC"
     default = []
}

variable "public_subnets" {
    description = "Lista de CIDRs das subnets públicas"
    type = list(object({
        name = string
        cidr = string
        availability_zone = string
    }))
>>>>>>> fa9d9d26cdab2de4607cc6107956f3bb5982e7af
}