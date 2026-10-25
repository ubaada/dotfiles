
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "lewis6991/gitsigns.nvim", config=true },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
})

-- Shared settings
vim.opt.compatible = false
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true
vim.cmd("syntax on")
vim.cmd("hi Normal guibg=none")


--- --- keymaps --- ---
--- for telescope
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")

--- for gitlines
--- see hunk (diff) of current bline
vim.keymap.set("n", "<leader>gp", require("gitsigns").preview_hunk)
--- see blame per line (john commited 2 months ago)
vim.keymap.set("n", "<leader>gb", require("gitsigns").toggle_current_line_blame)


--- for neo tree (file tree)
--- open/close side bar
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle source=filesystem<cr>")
