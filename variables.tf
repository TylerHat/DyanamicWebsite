#vpc variables
variable "vpc_cidr" {
  default     = "10.12.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.12.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.12.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.12.2.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.12.3.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.12.4.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.12.5.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

#security group variable
#192.168.0.23 but will change
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "IP address that is allowed to ssh into instance"
  type        = string
}

#rds variables
variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:127408405916:snapshot:snapshot-dev-db-final"
  description = "database snapshot arn"
  type        = string
}

variable "database_instance_class" {
  default     = "db.t2.micro"
  description = "database instance type"
  type        = string
}

variable "database_instance_identifier" {
  default     = "dynamicweb-db"
  description = "database instance type"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a standby db instance"
  type        = bool
}

#App load balencer variables
variable "ssl_cert_arn" {
  default     = "arn:aws:acm:us-east-1:127408405916:certificate/2f0e4232-54b8-41ea-a416-7af4d5cc7674"
  description = "ssl certificate arn"
  type        = string
}

#SNS topic variables
variable "operator_email" {
  default     = "hafield.tyler@gmail.com"
  description = "email address"
  type        = string
}

#asg variables
variable "launch_template_name" {
  default     = "dynamic-web-launch-template"
  description = "name of template"
  type        = string
}

#this contains the ami image that has the website already preconfigured on it
variable "ec2_image_id" {
  default     = "ami-0b5eea76982371e91"
  description = "id of ami"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "ec2 instance type"
  type        = string
}

variable "key_pair_ec2" {
  default     = "DynamicKeyPair"
  description = "name of key pair"
  type        = string
}

#route53 variables
variable "domain_name" {
  default     = "yohoenterprise.com"
  description = "name of domain name"
  type        = string
}


variable "record_name" {
  default     = "www"
  description = "sub of the domain name"
  type        = string
}