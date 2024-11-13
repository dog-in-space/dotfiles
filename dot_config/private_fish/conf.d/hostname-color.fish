if status is-interactive

if test "$hostname" = "M1-macOS"
	set fish_color_host FA9D0E
	set fish_color_user white
else if test "$HOSTNAME" = "pink-alma"
	set fish_color_host FA7DF0
else if test "$HOSTNAME" = "q58-gpc"
	set fish_color_hosts 2E0C5E
else 

set fish_color_host

end

end
