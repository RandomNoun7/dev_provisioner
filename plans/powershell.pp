plan dev_provisioner::powershell(
  TargetSpec $targets,
  # Optional[String] $repo,
) {
  run_task('dev_provisioner::choco_install', $targets)
  run_task('dev_provisioner::choco_install_packages', $targets)
  run_task('dev_provisioner::add_hub_alias', $targets)
  upload_file('c:/users/Bill Hurt/.ssh/id_rsa', 'c:/users/administrator/.ssh/id_rsa')
}
