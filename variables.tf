#default, you can overwrite at runtime.
variable "ami_id" {
  
  default     = "ami-09c813fb71547fc4f"

}

#mandatory
variable "sg_id" {
  
  
  
}

variable instance_type {
 
  default     = "t3.micro"
  validation{
    condition = contains([ "t3.micro","t3.small","t3.medium"],var.instance_type)
    error_message ="Validate values for instance type are: t3.small, t3.micro, t3.medium"
  }
 
}

#optional
variable "ec2_tags" {
  
  default     = {}
  
}


variable "subnet_id" {
 
}
variable "is_public" {

}

variable "common_tags" {
 
}
