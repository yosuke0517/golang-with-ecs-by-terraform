# iamのユーザ名をdeploy-userとする
resource "aws_iam_user" "deploy-user" {
  name = "deploy-user"
}
