# TaskDefinitionに設定するロググループ（ログを取得するようにするため）
resource "aws_cloudwatch_log_group" "sample-service" {
  name = "sample-service"
}