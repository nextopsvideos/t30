variable "rg_name" {
   type         = string
   description  = "this variable is defined to store rg name value"
}

variable "rg_location" {
    type        = string 
    description = "this variable is defined to store rg location value"  
}

variable "vnet_name" {
   type         = string
}

variable "address_space" {
   type         = list(string)
}

variable "subnet1_name" {
   type         = string
}

variable "address_prefix1" {
   type         = list(string)
}