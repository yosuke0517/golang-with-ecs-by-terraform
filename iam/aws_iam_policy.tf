# deployという名前でポリシーを作成
resource "aws_iam_policy" "deploy" {
  name        = "deploy"
  path        = "/"
  description = "deploy policy"
  policy      = file("aws_iam_policies/deploy_policy.json")
}

# ecs用のポリシーを作成
resource "aws_iam_policy" "sample-ecs-instance_policy" {
  name = "sample-ecs-instance-policy"
  path = "/"
  description = ""
  policy = file("aws_iam_policies/ecs_instance_policy.json")
}