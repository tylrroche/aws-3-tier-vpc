variable "region" {
  type        = string
  description = "Aws region"
}

variable "vpcname" {
  type        = string
  description = "name of main vpc"
}

variable "vpccidr" {
  type        = string
  description = "cidr for vpc networking"
}

variable "pub1" {
  type        = string
  description = "name of first public subnet"
}

variable "pub2" {
  type        = string
  description = "name of second public subnet"
}

variable "priv1" {
  type        = string
  description = "name of first private subnet"
}

variable "priv2" {
  type        = string
  description = "name of second private subnet"
}

variable "pub1cidr" {
  type        = string
  description = "cidr of public subnet1"
}

variable "pub2cidr" {
  type        = string
  description = "cidr of public subnet2"
}

variable "priv1cidr" {
  type        = string
  description = "cidr of private subnet 1"
}

variable "priv2cidr" {
  type        = string
  description = "cidr of private subnet 2"
}

variable "igwtag" {
  type        = string
  description = "tag for internet gateway"
}

variable "pub1rt" {
  type        = string
  description = "tag for public subnet 1 routing table"
}

variable "alltraffic" {
  type        = string
  description = "cidr to allow all traffic"
}

variable "priv1rt" {
  type        = string
  description = "tag for private subnet routing table"
}

variable "ami" {
  type        = string
  description = "ami id - ubuntu"
}

variable "vmsize" {
  type        = string
  description = "size of vm"
}

variable "vmtag" {
  type        = string
  description = "tag for webapp"
}

variable "web_sg" {
  type        = string
  description = "security group name for webapp"
}

variable "desc" {
  type        = string
  description = "description for security group"
}

variable "ingressdesc" {
  type        = string
  description = "description for ingress rule"
}

variable "webport" {
  type        = string
  description = "port for webapp"
}

variable "proto" {
  type        = string
  description = "protocol"
}

variable "ssh" {
  type        = string
  description = "ssh"
}

variable "lbname" {
  type        = string
  description = "name of load balancer"
}

variable "lbtype" {
  type        = string
  description = "type of load balancer"
}

variable "launchami" {
  type        = string
  description = "lauch configuration ami"
}

variable "keyname" {
  type        = string
  description = "SSH key name"
}

variable "pub_key" {
  type        = string
  description = "SSH public key"
}

variable "targetname" {
  type        = string
  description = "target group name"
}

variable "lb_arn" {
  type        = string
  description = "load balancer arn"
}

variable "asgname" {
  type        = string
  description = "name of auto scaling group"
}

variable "hctype" {
  type        = string
  description = "autoscaling group health check type"
}


variable "p80" {
  type        = string
  description = "health check port"
}

variable "p80desc" {
  type        = string
  description = "description for hc port"
}

variable "dbengine" {
  type        = string
  description = "type of database engine"
}

variable "asgarn" {
type        = string
description = "arn of asg"
}

variable "e_version" {
  type        = string
  description = "verison of database engine"
}

variable "i_class" {
  type        = string
  description = "database instance class"
}

variable "dbname" {
  type        = string
  description = "name of database"
}

variable "usrname" {
  type        = string
  description = "database username"
}

variable "pword" {
  type        = string
  description = "database password"
}

variable "pg_name" {
  type        = string
  description = "parameter group name"
}

variable "skipfs" {
  type        = string
  description = "skip final snapshot"
}
