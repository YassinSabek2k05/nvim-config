-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.g.clipboard = {
  name = "xclip", -- or "wl-copy"/"wl-paste" table if Wayland
  copy = {
    ["+"] = "xclip -selection clipboard",
    ["*"] = "xclip -selection primary",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -o",
    ["*"] = "xclip -selection primary -o",
  },
  cache_enabled = true,
}

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.smoothscroll = true
vim.opt.laststatus = 3
vim.opt.cursorline = true
vim.opt.pumblend = 10
vim.opt.winblend = 10
