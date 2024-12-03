#!/usr/bin/env fish

set -x SHELL (which fish || which zsh || which bash)
set -x EDITOR (which nvim || which vim || which vi)

# set VISUAL to code if available (chezmoi used this)
if which code
	set -x VISUAL code --wait
end

if status is-interactive

	set -x EZA_ICONS_AUTO always
	set -x LSOG $(which ls)
	set -x AICHAT_CONFIG_FILE "$HOME/.config/aichat/config.yaml"
	
	#conifg shortcuts 
	alias fishrc="chezmoi edit $HOME/.config/fish/config.fish"
	alias fishconfd="chezmoi edit $HOME/.config/fish/conf.d/"
	alias sourcerc="source $HOME/.config/fish/config.fish"
	alias atuinrc="chezmoi edit $HOME/.config/atuin/config.toml"
	alias aichatrc="chezmoi edit $AICHAT_CONFIG_FILE"
	alias kittyrc="chezmoi edit $HOME/.config/kitty/kitty.conf"

	#terminal shortcuts
	alias ask="aichat -e "
	alias pls='commandline -i "sudo $history[1]";history delete --exact --case-sensitive pls'

	#browser shortcuts
	alias webui="open https://openwebui.laika.dad"
	alias ddg="open https://start.duckduckgo.com/"

	# vi to nvim
	alias vi="nvim"
	alias vim="nvim"

	# cat to bat
	alias cat="bat -pp"

	# cd to zoxide
	alias cd="z"

	# rm to trash
	alias rm="trash"
	alias delete="$(which rm) -rf"
	alias bin="trash-list"
	alias recycle="trash-empty"	

	# ls to eza
	if which eza > /dev/null
	alias lsog="$LSOG"
	alias ls="eza"
	alias ll="eza -l"
	alias la="ls -a"
	alias lla="ls -la"
	end

	# easy active ports
	alias tunl="netstat -tunl"

	zoxide init fish | source
	fzf --fish | source
	thefuck --alias | source
	# atuin init fish | source
end
