$config = @"
[user]
	name = Bill Hurt
	email = hurt.bill@gmail.com
[core]
	editor = code --wait
	ignorecase = false
	autocrlf = false
	excludesfile = ~/.gitignore
[push]
	default = simple
[hub]
	protocol = ssh
# [format]
# 	pretty = format:%C(yellow)%h%C(reset) %<(50,trunc)%s %C(green)%aN%C(reset) %C(blue)%ad%C(reset) %C(blue)%cr%C(reset)
[alias]
	graph = log --all --graph --pretty=format:'%C(yellow)%h%C(reset) - %s%n%n            %C(green)%an%C(reset) %C(blue)(%cr)%C(reset) %C(auto)%d%C(reset)%n'
	amend = commit --amend --no-edit
	ass = add
	branchname = rev-parse --abbrev-ref HEAD
	checkignored = ls-files --ignored --exclude-standard
	lt = log --pretty=format:'%C(yellow)%h%C(reset) - %<(50,trunc)%s %<(20,trunc)%C(green)%an%C(reset) %C(bold cyan)%ad%C(reset) %C(blue)(%cr)%C(reset)%C(auto)%d%C(reset)'
	f = fetch --all --prune
	ignore = update-index --assume-unchanged
	unignore = update-index --no-assume-unchanged
	ignored = !git ls-files -v | grep "^[[:lower:]]"
	s = status -sb
[credential]
	modalPrompt = false
[winUpdater]
	recentlySeenVersion = 2.21.0.windows.1
[diff]
	tool = vscode
[difftool "vscode"]
	cmd = code --wait --diff $LOCAL $REMOTE
[merge]
	tool = vscode
[mergetool "vscode"]
	cmd = code --wait $MERGED
[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
[log]
	date = short-local
[url "git@github.com:"]
	insteadOf = https://github.com/
"@

Set-Content -path 'c:\users\administrator\.gitconfig' -value $config
