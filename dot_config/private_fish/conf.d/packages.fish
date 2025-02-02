#!/usr/bin/env fish

set -x BREW_PACKAGES_CLI aichat bat chezmoi dockutil duf dust eza fastfetch fd fish fisher fzf gh git just mas most neovim podman-tui progress syncthing thefuck tlrc trash-cli zoxide zsh

if test (uname) = "Darwin"
    set -x -a BREW_PACKAGES_CLI dockutil mas syncthing
end