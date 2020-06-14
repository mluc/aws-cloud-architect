# TODO: Define the output variable for the lambda function.
data "aws_lambda_invocation" "example" {
  function_name = aws_lambda_function.test_lambda.function_name
  input = <<JSON
{}
JSON
}

output "result" {
  description = "String result of Lambda execution"
  value       = jsondecode(data.aws_lambda_invocation.example.result)["message"]
}
