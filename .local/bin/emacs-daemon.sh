#!/usr/bin/env sh

emacs_server_running_p() {
    emacsclient -ca false -e '(delete-frame)' 2> /dev/null
}

emacs_server_running_p || $(which emacs) --daemon
