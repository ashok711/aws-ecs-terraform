data "template_file" "task_definition_template" {
    template = file("container-definitions/container-def.json.tpl")
    vars = {
      REPOSITORY_URL = replace(aws_ecr_repository.ecr.repository_url, "https://", "")
    }
}