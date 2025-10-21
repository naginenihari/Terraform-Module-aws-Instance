variable "ami_id" {
    type=string
    description = "This is the AMI used for creating EC2 instance using Terraform"
}

# variable "instance_type" {
#     type=string
#     description = "we are using instance type for creating EC2 instance using Terraform"
# }

## we can apply conditions and validation on instance type
variable "instance_type" {
    type=string
    description = "we are using instance type for creating EC2 instance using Terraform"
    validation {
     condition = contains(["t2.micro","t2.small","t2.medium"], var.instance_type)
     error_message = "please select any of the t2.micro or t2.small or t2.medium"
    }
}

variable "sg_ids" {
    type=list
    description = "we are using this security group for creating EC2 instance using Terraform"
}




#optinal
variable "tags" {
    type=map
    default ={}   # Means we mention empty tags defaultly
    description = "This is we are updating tags using Terraform"
}