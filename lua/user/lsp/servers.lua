local lsp_status_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_status_ok then
    return
end

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.clangd.setup({
    -- capabilities = capabilities,
})

lspconfig.bashls.setup {}

lspconfig.rust_analyzer.setup {}

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            workspace = {
                library = {
                    "${3rd}/love2d/library"
                }
            }
        }
    }
}

lspconfig.pyright.setup {}
