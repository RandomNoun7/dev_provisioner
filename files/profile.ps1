Import-Module Posh-Git, Emojis, Terminal-Icons #, oh-my-posh # -skipEditionCheck
# Set-Theme bill
$GitPromptSettings.DefaultPromptSuffix = "$('`n> ' * ($nestedPromptLevel + 1))"
$GitPromptSettings.DefaultForegroundColor = 'yellow'
$GitPromptSettings.BeforeForegroundColor = 'cyan'
$GitPromptSettings.AfterForegroundColor = 'cyan'


function branch {
    param (
        [string]$remote,
        [string]$branch
    )

    git checkout -b $branch
    git push --set-upstream $remote $branch
}


Set-Alias -Name git -Value hub
Set-Alias -name shit -value hub

function git-PullRequestStartChrome {
    git pull-request | %{start chrome $_}
}

function gitgraph {
    git graph $args
}

function Get-TopLevel {(Get-Item -path (git rev-parse --show-toplevel)).fullname}
function tl {Set-Location (Get-TopLevel)}
function set-clipboard{
    param(
       [parameter(position=0,mandatory=$true,ValueFromPipeline=$true)]$Text
    )
    begin{
        $data = [system.text.stringbuilder]::new()
    }

    process{
        if ($text){
            [void]$data.appendline($text)
        }
    }

    end{
        if ($data){
            $data.tostring().trimend([environment]::newline) + [convert]::tochar(0) | clip.exe
        }
    }
}
function dps {docker ps --no-trunc -a --format '{{ json . }}' | ConvertFrom-JSON}
function dil {docker image list --format '{{json .}}' | ConvertFrom-JSON}

New-Alias -name pr -value git-pullrequestStartChrome  -description 'Start a Pull Request, edit in VSCode, and launch chrome when done. Only works if the PR is against Origin/master'

New-Alias -name vstatus -value vagrantstatus -description 'Get status of all Vagrant machines.'

New-Alias -name gg -value gitgraph -Description 'Shortcut to git graph'

New-Alias -name d -value docker -Description 'Shortcut to get to the docker command'

function yeahNah { $false }

function nahYeah { $true }

function light {
    Get-MSTerminalProfile -Name "PowerShell Core" | Set-MSTerminalProfile -ColorScheme Novel
    $GitPromptSettings.DefaultForegroundColor = 'blue'
}

function dark {
    Get-MSTerminalProfile -Name "PowerShell Core" | Set-MSTerminalProfile -ColorScheme OceanicMaterial
    $GitPromptSettings.DefaultForegroundColor = 'yellow'
}

function gf { git f }

function hostsfile {
    code -r C:\Windows\System32\drivers\etc\hosts
}
