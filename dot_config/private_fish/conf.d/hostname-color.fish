
if set -q hostname
	set -x HOSTNAME "$hostname"
end

if status is-interactive

if test "$HOSTNAME" = "M1-macOS"
	set fish_color_host FA9D0E
	set fish_color_host_remote FA9D0E
	set fish_color_user white
else if test "$HOSTNAME" = "pink-alma"
	set fish_color_host FA7DF0
	set fish_color_host_remote FA7DF0
	set fish_color_user white	
else if test "$HOSTNAME" = "Q58-GPC"
	set fish_color_hosts 2E0C5E
	set fish_color_host_remote 2E0C5E
	set fish_color_user white
else 
	set fish_color_host green
	set fish_color_host_remote green
	set fish_color_user white
end

end
