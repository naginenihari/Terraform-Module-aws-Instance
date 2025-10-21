output "public_ip" {
    value = aws_instance.main.public_ip
    description = "public ip of the instance created"
}

output "private_ip" {
    value = aws_instance.main.private_ip
    description = "private ip of the instance created"
}

output "instance_id" {
    value = aws_instance.main.id
    description = "instance ID created"
}