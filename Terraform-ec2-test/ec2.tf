# module "catalogue" {
#     source = "../Terraform-Module-aws-Instance"
#     ami_id = "ami-09c813fb71547fc4f"
#     sg_ids = ["sg-0a78eac1aec3595b0"]
#     instance_type = "t2.micro"
#     tags={
#         Name="modules-dev"
#         Terraform=true
#     }
# }


module "catalogue" {
    source = "../Terraform-Module-aws-Instance"
    ami_id = var.ami_id
    sg_ids = var.sg_ids
    instance_type = var.instance_type
    tags={
        Name="modules-dev"
        Terraform=true
    }
}

output "public_ip" {
  value =module.catalogue.public_ip
}

output "private_ip" {
  value =module.catalogue.private_ip
}

output "instance_id" {
  value =module.catalogue.instance_id
}