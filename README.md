# WeaselOS

This my current NixOS setup using Tyler Kelley's "ZaneyOS" as a base.

From his project:
> ZaneyOS is a simple way of reproducing my configuration on any NixOS system. This includes the wallpaper, scripts, applications, config files, and more.

If you want a maintained and supported NixOS distribution, instead of my derivation,
you should probably use [ZaneyOS](https://gitlab.com/Zaney/zaneyos) instead.

## Includes

- Hyprland and everything one could need to get running
- Modern CLI and TUI tools, including:
    - `eza` -> `ls` replacement
    - `zoxide` -> `cd` replacement
    - `bat` -> `cat` replacement
    - `fzf` -> fuzzy finder
    - `ripgrep` -> `grep` replacement
    - `yazi` -> TUI file manager
    - `zellij` -> `tmux` replacement with sane defaults

