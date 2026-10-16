# nvim-config

My personal Neovim configuration, built on [LazyVim](https://github.com/LazyVim/LazyVim). It's the setup I use day to day with tmux on CachyOS (Arch).

It's mostly stock LazyVim with a few changes: a transparent background, and language support for the languages I work in.

## What's in it

- **Colorscheme:** [oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim), with transparent backgrounds so the terminal blur shows through
- **Languages (LazyVim extras):** C/C++ (clangd), CMake, Java, Go, SQL (sqlfluff, Postgres dialect), Markdown, plus the debug adapter (DAP) core
- **GLSL:** shader file extensions recognised, with Treesitter highlighting
- **Auto-save:** [auto-save.nvim](https://github.com/okuuva/auto-save.nvim), toggle with `<leader>uo`
- **Code screenshots:** [nvim-silicon](https://github.com/michaelrommel/nvim-silicon), `<leader>cy` / `<leader>cp` on a visual selection
- **Small tweaks:** 4-space indent, system clipboard via xclip, global statusline, `<F2>` jumps to the next diagnostic

## Setup

Requires Neovim 0.11+ and git. For code screenshots, install `silicon` and `xclip`.

```sh
git clone https://github.com/YassinSabek2k05/nvim-config ~/.config/nvim
nvim
```

Plugins install on first launch.

## Layout

```
lua/config/   options, keymaps, autocmds, lazy.nvim bootstrap
lua/plugins/  plugin specs and overrides
lazyvim.json  enabled LazyVim extras
```
