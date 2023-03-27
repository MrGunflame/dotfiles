local lsp = require("lsp-zero")

lsp.preset({
    name = "minimal",
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,

    suggest_lsp_servers = false,
})

lsp.ensure_installed({
	"rust_analyzer",
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
})

-- Autoformat on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

