resource "aws_iam_user" "iam" {
    name ="yogendra"
}
resource "aws_iam_user_policy_attachment" "admin" {
    user = aws_iam_user.iam.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}