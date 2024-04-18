local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = { "rust", "lua" },
  auto_install = true,
  highlight = {
      enable = true,
  },
  autopairs = {
    enable = true,
  },
  incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "<Leader>ss",
          node_incremental = "<Leader>si",
          scope_incremental = "<Leader>sc",
          node_decremental = "<Leader>sd",
      }
  }
})

vim.treesitter.language.register('htmldjango', 'html')
