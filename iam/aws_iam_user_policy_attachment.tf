# ポリシーをユーザへアタッチする
resource "aws_iam_policy_attachment" "deploy-attach" {
  name       = "test-attachment"
  users      = [aws_iam_user.deploy-user.name]
  policy_arn = aws_iam_policy.deploy.arn
}
