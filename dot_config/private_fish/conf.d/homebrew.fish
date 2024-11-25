#!/usr/bin/env fish

if test -e /opt/homebrew/bin/brew
	fish_add_path /opt/homebrew/bin
else if test -e /home/linuxbrew/.linuxbrew/bin/brew
        set -x PATH $PATH /home/linuxbrew/.linuxbrew/bin
else
        echo "Homebrew not found in expected locations"
end

#if podman is installed via brew then use the brew version
if test -e /home/linuxbrew/.linuxbrew/bin/podman
        alias podman=/home/linuxbrew/.linuxbrew/bin/podman
end
