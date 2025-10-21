variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t2.micro"
    description = "we are using instance time for creationg EC2 instance using Terraform"
}

variable "sg_ids" {
    default = ["sg-0a78eac1aec3595b0"]
}

variable "tags" {
    default = {

    }
    description = "we are using instance time for creationg EC2 instance using Terraform"
}
