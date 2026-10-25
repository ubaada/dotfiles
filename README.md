# dotfiles

## tmux

- enables the mouse
- moves tabs to the bottom status bar, active tab highlighted (grey background, black text)
- active pane border yellow, inactive borders dark grey
- `Ctrl-h/j/k/l` switches panes
- vi-style copy mode; dragging with the mouse copies to the system clipboard
- enables shift+enter for multi-line input
- same file works for psmux on Windows

## Neovim

- space is the leader key
- shows line numbers and an 80-column marker
- true color, transparent background
- uses the system clipboard
- `Ctrl-p` opens the file finder (Telescope)
- `Space e` toggles the file sidebar (Neo-tree)
- `Space gp` previews a git hunk, `Space gb` shows line blame (gitsigns)
- plugins managed and version-pinned by lazy.nvim
