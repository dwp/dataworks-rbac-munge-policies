resource "aws_ecr_repository" "dataworks-rbac-munge-policies" {
  name = "dataworks-rbac-munge-policies"
  tags = merge(
    local.common_tags,
    { DockerHub : "dwpdigital/dataworks-rbac-munge-policies" }
  )
}

resource "aws_ecr_repository_policy" "dataworks-rbac-munge-policies" {
  repository = aws_ecr_repository.dataworks-rbac-munge-policies.name
  policy     = data.terraform_remote_state.management.outputs.ecr_iam_policy_document
}

output "ecr_example_url" {
  value = aws_ecr_repository.dataworks-rbac-munge-policies.repository_url
}
