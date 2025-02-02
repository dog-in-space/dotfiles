#!/usr/bin/env fish

set -x SHELL (which fish || which zsh || which bash)
set -x EDITOR (which nvim || which vim || which vi)

# set VISUAL to code if available (chezmoi used this)
if which zed > /dev/null
	set -x VISUAL zed --wait
end

if status is-interactive

	set -x EZA_ICONS_AUTO always
	set -x AICHAT_CONFIG_FILE "$HOME/.config/aichat/config.yaml"

	zoxide init fish | source
	fzf --fish | source
	thefuck --alias | source
	# atuin init fish | source
end
