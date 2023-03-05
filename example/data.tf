data "archive_file" "zip" {
  source_file = "test.py"
  output_path = "lambda.zip"
  type        = "zip"
}
