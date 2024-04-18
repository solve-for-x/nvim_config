local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

cmp.setup({
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
	["<C-j>"] = cmp.mapping.select_next_item(),
    ["C-b"] = cmp.mapping.scroll_docs(-4),
    ["C-f"] = cmp.mapping.scroll_docs(4),
    ["C-Space"] = cmp.mapping.complete(),
    ["C-e"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
    { name = "nvim-lua" },
    { name = "emoji" },
  }
})


