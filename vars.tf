variable "keyPath" {
  default = "~/cloud-remote-aws.pem"
}

variable "i" {
  default = 0
}
variable "v" {
  default = 0
}
variable "niccount" {
  default = 0
}
variable "p" {
  default = 0
}

##########################################################################
variable "instancecount" {
  description = "Enter number of vm to deploy"
}

##########################################################################

variable "name" {
  description = "Enter name of VM"
}

##########################################################################
/*
variable "image" {
  description = "Enter Image centos or windows"
  validation {
    condition     = var.image == "centos" || var.image == "windows"
    error_message = "Please Enter 'windows' or 'centos'!"
  }
}

variable "os" {
  type = map(any)
  default = {
    "centos"  = "centos7_07"
    "windows" = "win12server2"
  }
}
*/
##########################################################################

variable "size" {
  description = "Enter Size small, medium,large"
  validation {
    condition     = contains(["small", "medium", "large"], var.size)
    error_message = "Please enter micro, small or large!"
  }
}

variable "flavor" {
  type = map(any)
  default = {
    "small"  = "m1.small"
    "medium" = "m1.medium"
    "large"  = "m1.large"
  }
}

##########################################################################
variable "network" {
  default = "l2p_SE04-SOL-INT-DB"
}

##########################################################################
variable "az" {
  default = "ASH-SE4-101"
}

##########################################################################
variable "volcount" {
  default = 1
}
variable "volsize" {
  default = "1"
}

##########################################################################
variable "powerstate" {
  default = "active"
}

##########################################################################
variable "devicename" {
  type = map(any)
  default = {
    "centos"  = "/dev/sdh"
    "windows" = "xvdh"
  }
}
##########################################################################
