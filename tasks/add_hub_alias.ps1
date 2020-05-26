if(!(Get-Alias 'git' -ErrorAction SilentlyContinue)){
  if(!(Test-Path $profile.CurrentUserAllHosts)){
    New-Item $profile.CurrentUserAllHosts -ItemType File -Force
  }
  Add-Content -Path $profile.CurrentUserCurrentHost -Value  'New-Alias -Name git -Value hub'
}