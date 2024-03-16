output "vm_ip" {
  description = "ip vm criada na aws"
  value       = aws_instance.vm.public_ip
}
