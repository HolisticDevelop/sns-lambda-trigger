
resource "aws_sns_topic" "datasync_notification" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "lambda_topic" {
  endpoint  = aws_lambda_function.lambda.arn
  protocol  = "lambda"
  topic_arn = aws_sns_topic.datasync_notification.arn
}

resource "aws_lambda_function" "lambda" {
  filename      = var.payload
  function_name = var.function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = var.entrypoint
  runtime       = var.runtime
}

resource "aws_lambda_permission" "sns_permission" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.datasync_notification.arn
}




