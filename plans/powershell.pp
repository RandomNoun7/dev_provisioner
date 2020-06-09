plan dev_provisioner::powershell(
  TargetSpec $targets,
  # Optional[String] $repo,
) {
  run_task('dev_provisioner::choco_install', $targets)
  run_task('dev_provisioner::choco_install_packages', $targets)
  upload_file('c:/users/Bill Hurt/.ssh/id_rsa', 'c:/users/administrator/.ssh/id_rsa', $targets)
  run_task('dev_provisioner::font_smoothing', $targets)
  upload_file('files/profile.ps1', 'c:/users/administrator/Documents/PowerShell/profile.ps1')
}
