provider "aws" {
    region = "ap-south-1"
    access_key = "access_key"
    secret_key = "secret_key"
}

resource "aws_iam_user" "create_user" {
  name = var.user_name
  path = "/"

  tags = {
    Name = "${var.user_name}"
  }
}

resource "aws_iam_policy" "user_policy" {
  name = "CloudGovernancePolicyDelete"
  description = "CloudGovernance Policy permissions"
  policy = file("./policy.json")
}

resource "aws_iam_user_policy_attachment" "user_policy_attach" {
    user = aws_iam_user.create_user.name
    policy_arn = aws_iam_policy.user_policy.arn
   
}
