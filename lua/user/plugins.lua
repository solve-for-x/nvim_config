-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Theme
  "lunarvim/onedarker.nvim",
  {"catppuccin/nvim", name = "catppuccin", priority = 1000},
  "folke/tokyonight.nvim",
  -- Commenting
  "numToStr/Comment.nvim",
  -- Pair completion
  {"windwp/nvim-autopairs",
    event = "InsertEnter"},
  -- Completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-emoji",
  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  -- LSP 
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
}

local opts = {}

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

lazy.setup(plugins, opts)
