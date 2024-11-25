#!/usr/bin/env fish

if status is-interactive

set -x FZF_DEFAULT_OPTS "
  --height 40% \
  --layout=reverse \
  --border \
  --preview='bat --style=numbers --color=always {}' \
  --preview-window='right:60%:wrap' \
  --color=bg+:#1b1d1e,fg+:#f8f8f2,hl+:#ff79c6,info:#bd93f9,border:#6272a4 \
  --color=prompt:#50fa7b,pointer:#ff5555,marker:#f1fa8c,spinner:#8be9fd,header:#bd93f9 \
  --pointer='>' \
  --marker='⮕' \
  --header='-- Select --' \
  --multi
"

set -x FZF_CTRL_R_OPTS "--preview-window=hidden"
bind \e\[A fzf-history-widget

# if fd is found use it else use find
if type -q fd
    set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
else
    set -x FZF_DEFAULT_COMMAND "find . -type f"
end


end
