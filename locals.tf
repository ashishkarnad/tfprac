locals {
  filenames = ["app_config", "db_config", "auth_config"]
}

resource "local_file" "fname" {
  count    = length(local.filenames)
  filename = "${path.module}/${local.filenames[count.index]}.txt"
  content  = "This is  content of file ${path.module}/${local.filenames[count.index]}.txt"
}

resource "local_file" "fsname" {

  count    = var.create_file ? 1 : 0
  content  = "This file was created becae create_file is true"
  filename = "${path.module}/${local.filenames[count.index]}.txt"
}

resource "local_file" "readme" {
  count    = (var.dep_env == "prod" || var.dep_env == "staging") ? 1 : 0
  filename = "${path.module}/${local.filenames[count.index]}.txt"
  content  = "The content of the files  ${path.module}/{local.filename[count.index]}.txt"
}

resource "local_file" "depenv" {
  count    = (var.dep_env == "prod" || var.dep_env == "staging") ? 1 : 0
  filename = "${path.module}/${local.filenames[count.index]}.txt"
  content  = "file is prod for ${path.module}/{local.filenames[count.index.]}.txt"
}