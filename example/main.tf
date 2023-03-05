module "sns_with_lambda" {
  source = "../"
  payload = "${path.module}/lambda.zip"
  entrypoint = "test.lambda_handler"
}