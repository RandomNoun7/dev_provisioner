plan dev_provisioner::powershell(
  TargetSpec $targets,
  Optional[String] $repo,
) {
  run_task('dev_provisioner::choco_install', $targets)
}
