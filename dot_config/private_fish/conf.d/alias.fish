#!/usr/bin/env fish

if status is-interactive

    #terminal shortcuts
    alias ask="aichat -e "
    alias pls='commandline -i "sudo $history[1]";history delete --exact --case-sensitive pls'

    #browser shortcuts
    alias webui="open https://openwebui.laika.dad"
    alias ddg="open https://start.duckduckgo.com/"

    # vi to nvim
    if type -q nvim
        alias vi="nvim"
        alias vim="nvim"
    end
    
    # cat to bat
    if type -q nvim
        alias cat="bat -pp"
    end

    # cd to zoxide
    if type -q zoxide
        alias cd="z"
    end

    # rm to trash
    if type -q trash
        alias rm="trash"
        alias delete="$(which rm) -rf"
        alias bin="trash-list"
        alias recycle="trash-empty"	
    end

    # ls to eza
    if type -q eza
        alias lsog="$(which ls)"
        alias ls="eza"
        alias ll="eza -l"
        alias la="eza -a"
        alias lla="eza -la"
    end

    if type -q systemctl
        alias sysu="systemctl --user"
    end

    if type -q pueue
        alias q="pueue"
    end

    # easy active ports
    alias tunl="netstat -tunl"

    # ssh aliases
    alias pink="ssh pink"
    alias purple="ssh purple"
    alias blue="ssh blue"
end
