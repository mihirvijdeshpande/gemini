resource "aws_instance" "Test-Instance" {
	ami   = var.aws_ami
	instance_type = var.instance_type
	tags={
		Name = "Terraform-ec2-test"
	}
}