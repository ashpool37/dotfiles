# My Linux configuration and scripts

It's pretty basic. There are some cool scripts though.

This repo is managed by [yadm](https://github.com/yadm-dev/yadm). There are todos in git objects, those are managed by [git bug](https://github.com/git-bug/git-bug).

## OS

Arch Linux

## Graphical environment

- `hyprland`
- `hyprpaper`
- `hyprlock`
- `waybar`
- `mako`

## Programs

- `bash`
- `alacritty`
- `firefox`
- `emacs`
- some others

## Fonts

- `JetBrainsMono Nerd Font`
- `Noto Sans`

## Scripts in `~/.local/bin`

### `ashpass.sh` 

Generate a secure and memorable password and print it to `stdout`. It's basically `xkcdpass`, but it also adds punctuation, capital letters and digits to satisfy some dumb password strength policies.

Requires `xkcdpass` and `coreutils` (for `shuf`) to work.

I use 5 words by default and my `xkcdpass` dictionary is 7776 words long, which should be enough against a very fast offline attack in Anno Domini 2025. If you use fewer words or your dictionary is smaller, check your threat model.

### `clean-pdf.sh`

Remove ALL METADATA from a PDF.

Requires `exiftool`, `qpdf`, and `pdftk` to work. Yes, THREE SEPARATE PROGRAMS.

### `emacs-daemon.sh`, `emacs-restart.sh`

Start and restart the `emacs` daemon.

Requires Emacs, duh. No, you can't see my Emacs config.

### `ip-exclude.py`

Exclude an IP subnet from another subnet, and output the list of subnets that together are equivalent to the difference.

Requires a recent Python.

### `pb`

A simple Restic setup to "backup" and version directories. Useful as an additional checkpoint mechanism if you screw up your git repos often . Don't use it for actual backups though.

Requires Restic.

### `yota-gtfo.sh`

If you know, you know.

## Miscellaneous

- `nh/hdf.sh` &mdash; connect to the european Hardfought NetHack server. Requires `pass`.

## License

The Unlicense a.k.a Public Domain. See LICENSE.

No refunds.