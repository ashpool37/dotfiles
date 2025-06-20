export PATH="$PATH:/home/ashpool/.local/bin"
#export PATH="$PATH:$HOME/.yarn/bin"
#export PATH="$PATH:/var/lib/flatpak/exports/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.cargo/bin"

if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
	mkdir "${XDG_RUNTIME_DIR}"
	chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then

    export MOZ_ENABLE_WAYLAND="1"
    export XDG_CURRENT_DESKTOP=Hyprland
    export XDG_SESSION_TYPE=wayland
    # export WAYLAND_DISPLAY=wayland-1
    export QT_QPA_PLATFORM="wayland-egl"
    export COLORTERM=truecolor

    export EDITOR="zeditor -w"
    export VISUAL="$EDITOR"

    # GTK_IM_MODULE=fcitx
    # QT_IM_MODULE=fcitx
    # XMODIFIERS=@im=fcitx

    proptest -M i915 -D /dev/dri/card1 123 connector 103 1
    # exec dbus-run-session -- sway -V -d 2> ~/var/log/sway.log
    exec dbus-run-session -- Hyprland

elif [ -n "$BASH_VERSION" ]; then

    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi

fi
