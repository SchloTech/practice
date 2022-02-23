module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0b614a5d911900a9b"
  instance_type          = "t2.micro"
  key_name               = "temp"
  monitoring             = true
  vpc_security_group_ids = ["sg-0f56028c061dea5a8"]
  subnet_id              = "subnet-5f58b234"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}