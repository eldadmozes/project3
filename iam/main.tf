provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

resource "aws_iam_user" "project3_user" {
  name = "project3_user"
  path = "/"

  tags = {
    Name = "project3_user"
  }
}

resource "aws_iam_user_policy_attachment" "project3_user_attachment" {
  user       = aws_iam_user.project3_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
