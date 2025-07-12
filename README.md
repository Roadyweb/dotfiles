## Installation

Starship

```
curl -sS https://starship.rs/install.sh | sh
```

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:Roadyweb/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

zsh config from https://github.com/dreamsofautonomy/zensh

## TMUX

Reload TMUX environment so TPM is sourced:

```bash
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```

That's it!

### Installing plugins

1. Add new plugin to `~/.tmux.conf` with `set -g @plugin '...'`
2. Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin.

You're good to go! The plugin was cloned to `~/.tmux/plugins/` dir and sourced.


### Key bindings

`prefix` + <kbd>I</kbd>
- Installs new plugins from GitHub or any other git repository
- Refreshes TMUX environment

`prefix` + <kbd>U</kbd>
- updates plugin(s)

`prefix` + <kbd>alt</kbd> + <kbd>u</kbd>
- remove/uninstall plugins not on the plugin list

