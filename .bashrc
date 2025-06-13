# source ~/.bash_completion.d/complete_alias

export PS1=" \$ \h:\W> "

export EDITOR="emacsclient -t -a /usr/bin/emacs"
export VISUAL="$EDITOR"
alias emacs="$EDITOR"
alias vim="$EDITOR"
alias e="$EDITOR"
# alias k="kubectl"

alias ls='ls --color=auto'

# complete -F _complete_alias dotfiles
complete -cf doas
complete -F _command doas

r() {
    emacs "$1" --eval '(setq buffer-read-only t)'
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ashpool/google-cloud-sdk/path.bash.inc' ]; then . '/home/ashpool/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ashpool/google-cloud-sdk/completion.bash.inc' ]; then . '/home/ashpool/google-cloud-sdk/completion.bash.inc'; fi

eval "$(rbenv init -)"
