variable "identifier"{
 default = "db-identifier"
}

variable "skip_final_snapshot"{
 default = "true"
}

variable "storage" {
  default = "5"
}

variable "engine" {
  default = "mysql"
}

variable "engver" {
  default = "5.7"
}

variable "dbsize" {
  default = "db.t3.micro"
}

variable "dbname" {
  default = "testdbname"
}


variable "dbusername" {
  default = "Testing"
}

variable "dbpswd" {
  default = "tiger12345"
}

variable "pgn" {
  default = "default.mysql5.7"
}
