#!/usr/bin/env fish

if set -q hostname
	set -x HOSTNAME "$hostname"
end

if status is-interactive

if test "$HOSTNAME" = "silver"
	set fish_color_host 8A8D8F
	set fish_color_host_remote 8A8D8F
else if test "$HOSTNAME" = "pink"
	set fish_color_host FA7DF0
	set fish_color_host_remote FA7DF0
else if test "$HOSTNAME" = "purple" -o "$HOSTNAME" = "lavender" -o "$HOSTNAME" = "indigo"
	set fish_color_host 2E0C5E
	set fish_color_host_remote 2E0C5E
else if test "$HOSTNAME" = "blue"
	set fish_color_hosts blue
	set fish_color_host_remote blue
else 
	set fish_color_host green
	set fish_color_host_remote green
end

set fish_color_autosuggestion white
set fish_color_user white

end
