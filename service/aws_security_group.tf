resource "aws_security_group" "instance" {
  name = "instance"
  description = "instance sg"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  # 外に出る通信ポートの範囲と対象IPを指定
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}