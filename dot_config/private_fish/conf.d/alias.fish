#!/usr/bin/env fish

if status is-interactive

    #terminal shortcuts
    alias ask="aichat -e "
    alias pls='commandline -i "sudo $history[1]";history delete --exact --case-sensitive pls'

    #browser shortcuts
    alias webui="open https://openwebui.laika.dad"
    alias ddg="open https://start.duckduckgo.com/"

    # vi to nvim
    if which nvim > /dev/null
        alias vi="nvim"
        alias vim="nvim"
    end
    
    # cat to bat
    if which bat > /dev/null
        alias cat="bat -pp"
    end

    # cd to zoxide
    if which zoxide > /dev/null
        alias cd="z"
    end

    # rm to trash
    if which trash > /dev/null
        alias rm="trash"
        alias delete="$(which rm) -rf"
        alias bin="trash-list"
        alias recycle="trash-empty"	
    end

    # ls to eza
    if which eza > /dev/null
        alias lsog="$(which ls)"
        alias ls="eza"
        alias ll="eza -l"
        alias la="eza -a"
        alias lla="eza -la"
    end

    if which systemctl > /dev/null
        alias sysu="systemctl --user"
    end
    
    # easy active ports
    alias tunl="netstat -tunl"

    # ssh aliases
    alias pink="ssh pink"
    alias purple="ssh purple"
    alias blue="ssh blue"
end
