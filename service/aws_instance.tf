resource "aws_instance" "sample" {
  # ECS用のマシンイメージを指定
  ami = "ami-0ffb5f4e03c892bc5"
  # ECSだと最低でもt2.smallは必要
  instance_type = "t2.small"
  # Web コンソールでインスタンスの詳細を表示するか
  monitoring = true
  # outputsからIAMロールを指定
  iam_instance_profile = data.terraform_remote_state.aws_iam.outputs.ecs_instance_profile_name
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_1_id
  user_data = file("./user_data.sh")
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.instance.id,
  ]
  root_block_device {
    volume_size = "30"
    volume_type = "gp2"
  }
}