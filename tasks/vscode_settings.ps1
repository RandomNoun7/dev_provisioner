$content = @'
  {
    /* Silence the noise */
    // "workbench.activityBar.visible": false,
    // "workbench.editor.showTabs": false,
    // "workbench.statusBar.visible": false,
    "editor.minimap.enabled": false,
    /* Silence the noise */
    "gitlens.advanced.messages": {
        "suppressCommitHasNoPreviousCommitWarning": false,
        "suppressCommitNotFoundWarning": false,
        "suppressFileNotUnderSourceControlWarning": false,
        "suppressGitVersionWarning": false,
        "suppressLineUncommittedWarning": false,
        "suppressNoRepositoryWarning": false,
        "suppressResultsExplorerNotice": false,
        "suppressShowKeyBindingsNotice": true,
        "suppressUpdateNotice": true,
        "suppressWelcomeNotice": true
    },
    "window.zoomLevel": 2,
    "ruby.rubocop.executePath": "C:/tools/ruby2.5.1-2x64/bin/",
    "editor.rulers": [
        80
    ],
    "editor.fontFamily": "'Cascadia Code PL' ,Consolas, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "gitlens.keymap": "chorded",
    "editor.tabSize": 2,
    "editor.renderWhitespace": "all",
    "terminal.integrated.shellArgs.windows": [
        "-NoLogo"
    ],
    "gitlens.codeLens.authors.enabled": false,
    "[markdown]": {
        "editor.quickSuggestions": true
    },
    "gitlens.codeLens.recentChange.enabled": false,
    "cSpell.userWords": [
        "Ansible",
        "Clicky",
        "Pooler",
        "Sharepoint",
        "acceptance",
        "applicationname",
        "applicationpool",
        "autoconnect",
        "bhurt",
        "bindinginformation",
        "c",
        "chocolatey",
        "cmdlet",
        "commandline",
        "devops",
        "dll",
        "dll's",
        "enabledprotocols",
        "hbuckle",
        "id",
        "mentorship",
        "namevar",
        "onpass",
        "orgs",
        "physicalpath",
        "powershellmodule",
        "puppetlabs",
        "repo",
        "rsa",
        "sitename",
        "ssh",
        "users"
    ],
    "terminal.integrated.fontFamily": "Cascadia Code PL",
    "breadcrumbs.enabled": true,
    "files.associations": {
        ".remote": "json"
    },
    "powershell.developer.featureFlags": [
        "PSReadline"
    ],
    "workbench.colorCustomizations": {
        "[Default Dark+]": {
            //Dark+ Console Theme
            //"terminal.background": "#0c0c0c",
            "terminal.ansiBlack": "#000000",
            "terminal.ansiBlue": "#569cd6",
            "terminal.ansiGreen": "#608b4e",
            "terminal.ansiCyan": "#ce9178",
            "terminal.ansiRed": "#f44747",
            "terminal.ansiMagenta": "#646695",
            "terminal.ansiYellow": "#d7ba7d",
            "terminal.ansiWhite": "#d4d4d4",
            "terminal.ansiBrightBlack": "#808080",
            "terminal.ansiBrightBlue": "#9cdcfe",
            "terminal.ansiBrightGreen": "#b5cea8",
            "terminal.ansiBrightCyan": "#4EC9B0",
            "terminal.ansiBrightRed": "#d16969",
            "terminal.ansiBrightMagenta": "#c586c0",
            "terminal.ansiBrightYellow": "#dcdcaa",
            "terminal.ansiBrightWhite": "#d4d4d4",
        },
        //"terminal.background": "#012456",
        "terminal.foreground": "#cccccc",
        "terminal.ansiBlack": "#0c0c0c",
        "terminal.ansiBlue": "#0037da",
        "terminal.ansiGreen": "#13a10e",
        "terminal.ansiCyan": "#3a96dd",
        "terminal.ansiRed": "#c50f1f",
        "terminal.ansiMagenta": "#881798",
        "terminal.ansiYellow": "#c19c00",
        "terminal.ansiWhite": "#cccccc",
        "terminal.ansiBrightBlack": "#767676",
        "terminal.ansiBrightBlue": "#3b78ff",
        "terminal.ansiBrightGreen": "#16c60c",
        "terminal.ansiBrightCyan": "#61d6d6",
        "terminal.ansiBrightRed": "#e74856",
        "terminal.ansiBrightMagenta": "#b4009e",
        "terminal.ansiBrightYellow": "#f9f1a5",
        "terminal.ansiBrightWhite": "#f2f2f2",
    },
    "editor.tokenColorCustomizations": {
        "[Default Dark+]": {
            "comments": "#608b4e"
        }
    },
    "editor.renderControlCharacters": true,
    "powershell.integratedConsole.showOnStartup": false,
    "extensions.ignoreRecommendations": false,
    "terminal.integrated.cursorStyle": "underline",
    "terminal.integrated.fontSize": 12,
    "sync.gist": "839577218362fd459c91a8c4a6e1fefa",
    "git.autofetch": true,
    "git.ignoreLegacyWarning": true,
    "workbench.iconTheme": "vscode-great-icons",
    "git.enableStatusBarSync": false,
    "debug.console.fontFamily": "Cascadia Code PL",
    "terminal.integrated.cursorBlinking": true,
    "files.eol": "\n",
    "yaml.schemas": {
        "file:///c%3A/Users/Bill%20Hurt/.vscode-insiders/extensions/me-dutour-mathieu.vscode-github-actions-2.2.7/schemas/workflow.schema.json": "/.github/workflows/*.yml",
        "file:///c%3A/Users/Bill%20Hurt/.vscode-insiders/extensions/me-dutour-mathieu.vscode-github-actions-2.2.7/schemas/action.schema.json": "/action.yml"
    },
    "task.slowProviderWarning": [
        "rake"
    ],
    "powershell.integratedConsole.forceClearScrollbackBuffer": true,
    "powershell.powerShellDefaultVersion": "Windows PowerShell (x64)",
    "explorer.compactFolders": false,
    "githubPullRequests.remotes": [
        "origin",
        "upstream"
    ],
    "swaggerViewer.previewInBrowser": true,
    "powershell.promptToUpdatePowerShell": false,
    "sync.forceUpload": true,
    "cSpell.enableFiletypes": [
        "!plaintext",
        "!yaml",
        "asciidoc",
        "c",
        "cpp",
        "csharp",
        "css",
        "go",
        "handlebars",
        "html",
        "jade",
        "javascript",
        "javascriptreact",
        "latex",
        "less",
        "markdown",
        "php",
        "plaintext",
        "pub",
        "python",
        "restructuredtext",
        "rust",
        "scss",
        "text",
        "typescript",
        "typescriptreact",
        "yml"
    ],
    "puppet.editorService.formatOnType.enable": true
  }
'@

Set-Content C:\Users\Administrator\AppData\Roaming\APPDATA\Code\User\Settings.json -value $content
