# dotfiles

Personal config for tmux (Linux/macOS) and psmux (Windows), plus Neovim.

## Layout

```
tmux/tmux.conf        tmux / psmux config (one file, both platforms)
neovim/init.lua       Neovim config
neovim/lazy-lock.json Neovim plugin lockfile
```

`tmux.conf` is deliberately portable: style attributes are comma-separated and
clipboard uses OSC 52 (`set-clipboard on`) instead of `pbcopy`/`xclip`/`wl-copy`.
psmux only splits styles on `,`, so do not switch to spaces.

## Install

| Target  | tmux.conf                                   | neovim                     |
|---------|---------------------------------------------|----------------------------|
| Linux   | `~/.config/tmux/tmux.conf`                  | `~/.config/nvim/`          |
| macOS   | `~/.config/tmux/tmux.conf`                  | `~/.config/nvim/`          |
| Windows | `%USERPROFILE%\.psmux.conf`                 | `%LOCALAPPDATA%\nvim\`     |

```bash
git clone <this-repo> ~/dotfiles
mkdir -p ~/.config/tmux ~/.config/nvim
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/dotfiles/neovim/{init.lua,lazy-lock.json} ~/.config/nvim/
```

Windows (Git Bash):

```bash
git clone <this-repo> ~/dotfiles
cp ~/dotfiles/tmux/tmux.conf ~/.psmux.conf
mkdir -p "$LOCALAPPDATA/nvim"
cp ~/dotfiles/neovim/* "$LOCALAPPDATA/nvim/"
```

## Requirements

- Neovim 0.10+; `git` for the lazy.nvim bootstrap; `fd` for Telescope `find_files`;
  `ripgrep` optional.
- Clipboard: nvim needs `xclip` or `wl-copy` on Linux; native on Windows/macOS.
  tmux OSC 52 needs a terminal that supports it (iTerm2, kitty, WezTerm,
  Windows Terminal) — macOS Terminal.app does not.
- tmux 3.2+ for `extended-keys`; psmux for Windows.

## Keymaps

Space is the leader.

| Keys        | Action                        |
|-------------|-------------------------------|
| `C-p`       | Telescope find_files          |
| `<leader>e` | Neo-tree toggle               |
| `<leader>gp`| gitsigns preview hunk         |
| `<leader>gb`| gitsigns line blame           |
| `C-h/j/k/l` | move between tmux panes       |
