# deployという名前でポリシーを作成
resource "aws_iam_policy" "deploy" {
  name        = "deploy"
  path        = "/"
  description = "deploy policy"
  policy      = file("aws_iam_policies/deploy_policy.json")
}
