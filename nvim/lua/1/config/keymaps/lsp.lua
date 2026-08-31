-- Go to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- Show references
vim.keymap.set("n", "gr", vim.lsp.buf.references)

-- Show code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
