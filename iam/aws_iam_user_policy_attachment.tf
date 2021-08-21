# ポリシーをユーザへアタッチする
resource "aws_iam_policy_attachment" "deploy-attach" {
  name       = "test-attachment"
  users      = [aws_iam_user.deploy-user.name]
  policy_arn = aws_iam_policy.deploy.arn
}

# role: sample_ecs_instance_roleにポリシーをアタッチする
resource "aws_iam_role_policy_attachment" "ecs_instance_role_attach" {
  role = aws_iam_role.sample_ecs_instance_role.name
  policy_arn = aws_iam_policy.sample-ecs-instance_policy.arn
}