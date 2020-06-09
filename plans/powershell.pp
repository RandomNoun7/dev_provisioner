plan dev_provisioner::powershell(
  TargetSpec $targets,
  Optional[String] $repo = undef,
) {
  run_task('dev_provisioner::choco_install', $targets)
  run_task('dev_provisioner::choco_install_packages', $targets)
  upload_file('c:/users/Bill Hurt/.ssh/id_rsa', 'c:/users/administrator/.ssh/id_rsa', $targets)
  run_task('dev_provisioner::install_package_provider', $targets)
  run_command('Install-Module -Name Posh-Git, Emojis, Terminal-Icons -Force -Scope AllUsers', $targets)
  run_task('dev_provisioner::font_smoothing', $targets)
  run_task('dev_provisioner::set_profile_content', $targets)
  run_task('dev_provisioner::vscode_settings', $targets)
  run_task('dev_provisioner::set_git_config', $targets)
  run_command('Set-Content c:/users/administrator/.ssh/config -value "Host github.com`n`tStrictHostKeyChecking no`n"', $targets)
  if $repo {
    run_command("cd c:\\ ; git clone git@github.com:${repo}.git *>\$NULL; exit 0", $targets)
  }
}
